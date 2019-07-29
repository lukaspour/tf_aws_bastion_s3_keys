variable "allowed_cidr" {
  type = list(string)

  default = [
    "0.0.0.0/0",
  ]

  description = "A list of CIDR Networks to allow ssh access to."
}

variable "allowed_ipv6_cidr" {
  type = list(string)

  default = [
    "::/0",
  ]

  description = "A list of IPv6 CIDR Networks to allow ssh access to."
}

variable "allowed_security_groups" {
  type        = list(string)
  default     = []
  description = "A list of Security Group ID's to allow access to."
}

variable "name" {
  type        = string
  default     = "bastion"
  description = "Name of bastion of EC2 instance."
}

variable extra_tags {
  type        = list(string)
  default     = []
  description = "A list of tags to associate to the bastion instance."
}

variable "ami" {
  type        = string
  description = "AMI of EC2 instance to be used."
}

variable "instance_type" {
  type        = string
  default     = "t2.micro"
  description = "Type of instance."
}

variable "instance_volume_size_gb" {
  type        = number
  description = "The root volume size, in gigabytes"
  default     = 8
}

variable "iam_instance_profile" {
  type        = string
  description = "Instance profile of an autoscaling group."
}

variable "user_data_file" {
  type        = string
  default     = "user_data.sh"
  description = "Script to be runned by instance during boot time."
}

variable "s3_bucket_name" {
  type        = string
  description = "Name of bucket with SSH keys."

}

variable "s3_bucket_uri" {
  type        = string
  default     = ""
  description = "Bucket URI."
}

variable "enable_monitoring" {
  type        = bool
  default     = true
  description = "Enable cloudwatch monitoring"
}

variable "ssh_user" {
  type        = string
  default     = "ubuntu"
  description = "User of EC2 machine."
}

variable "enable_hourly_cron_updates" {
  type    = bool
  default = false
}

variable "keys_update_frequency" {
  type    = string
  default = ""
}

variable "additional_user_data_script" {
  type    = string
  default = ""
}

variable "region" {
  type    = string
  default = "eu-west-1"
}

variable "vpc_id" {
  type = string
}

variable "security_group_ids" {
  type        = string
  description = "Comma seperated list of security groups to apply to the bastion."
  default     = ""
}

variable "subnet_ids" {
  type        = list(string)
  default     = []
  description = "A list of subnet ids"
}

variable "eip" {
  type    = string
  default = ""
}

variable "associate_public_ip_address" {
  type    = bool
  default = false
}

variable "key_name" {
  type    = string
  default = ""
}

variable "apply_changes_immediately" {
  type        = bool
  description = "Whether to apply the changes at once and recreate auto-scaling group"
  default     = false
}
