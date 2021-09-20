#Creating EC2 Instance

resource "aws_instance" "this" {
  ami           = var.win_ami
  instance_type = var.instance_type
  key_name      = var.key_name
  vpc_security_group_ids  = [aws_security_group.this.id]
  iam_instance_profile    = aws_iam_instance_profile.this.name
}

#Creating SSM Role to Attach Domain to VM

resource "aws_iam_role" "this" {
  name          = var.ssm_role_name
  assume_role_policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
      {
        "Effect": "Allow",
        "Principal": {
          "Service": "ec2.amazonaws.com"
        },
        "Action": "sts:AssumeRole"
      }
    ]
}
EOF
}

#Attaching Directory Permission Policy to SSM Role

resource "aws_iam_role_policy_attachment" "ssm-instance" {
  role       = aws_iam_role.this.id
  policy_arn = "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore"
}
#Attaching Directory Permission Policy to SSM Role

resource "aws_iam_role_policy_attachment" "ssm-ad" {
  role       = aws_iam_role.this.id
  policy_arn = "arn:aws:iam::aws:policy/AmazonSSMDirectoryServiceAccess"
}
#Creating Instance profile for the SSM Role

resource "aws_iam_instance_profile" "this" {
  name       = var.instance_profile_name
  role       = aws_iam_role.this.name
}

data "aws_directory_service_directory" "this" {
  directory_id = "d-9267731c05"
}

#Creating SSM Documet to join Domain to Instance

resource "aws_ssm_document" "this" {
  name          = var.ssmdocument_name
  document_type = "Command"
  content = jsonencode(
    {
      "schemaVersion" = "2.2"
      "description"   = "aws:domainJoin"
      "mainSteps" = [
        {
          "action" = "aws:domainJoin",
          "name"   = "domainJoin",
          "inputs" = {
            "directoryId" : data.aws_directory_service_directory.this.id,
            "directoryName" : data.aws_directory_service_directory.this.name
            "dnsIpAddresses" : sort(data.aws_directory_service_directory.this.dns_ip_addresses)
          }
        }
      ]
    }
  )
}

#Attaching Directory Service to the Instance

resource "aws_ssm_association" "this" {
  name = aws_ssm_document.this.name
  targets {
    key    = "InstanceIds"
    values = [aws_instance.this.id]
  }
}
