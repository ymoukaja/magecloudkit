# ---------------------------------------------------------------------------------------------------------------------
# REQUIRED PARAMETERS
# You must provide a value for each of these parameters.
# ---------------------------------------------------------------------------------------------------------------------

variable "vpc_id" {
  description = "The ID of the VPC in which to launch the EC2 instance."
}

variable "subnet_id" {
  description = "The ID of the Subnet in which to launch the EC2 instance."
}

variable "user_data" {
  description = "A User Data script to execute while the instance is booting."
}

# ---------------------------------------------------------------------------------------------------------------------
# OPTIONAL PARAMETERS
# These parameters have reasonable defaults.
# ---------------------------------------------------------------------------------------------------------------------

variable "name" {
  description = "The name used for the EC2 instance"
  default = "bastion01"
}

variable "description" {
  description = "Description of instance"
  default     = ""
}

variable "ami_id" {
  description = "The ID of the AMI used to launch the Bastion instance. If blank then a recent Ubuntu 16.04 AMI will be used."
  default = ""
}

variable "instance_type" {
  description = "The type of EC2 Instances to run for each node in the ASG (e.g. t2.micro)."
  default = "t2.micro"
}

variable "ssh_key_name" {
  description = "The name of an EC2 Key Pair that can be used to SSH to the EC2 Instances in this cluster. Set to an empty string to not associate a Key Pair."
  default     = ""
}

variable "allowed_ssh_cidr_blocks" {
  description = "A list of CIDR-formatted IP address ranges from which the EC2 Instances will allow SSH connections."
  type        = "list"
  default     = []
}

variable "allowed_ssh_security_group_ids" {
  description = "A list of security group IDs from which the EC2 Instances will allow SSH connections."
  type        = "list"
  default     = []
}

variable "associate_public_ip_address" {
  description = "If set to true, associate a public IP address with the EC2 Instance."
  default     = false
}

variable "ssh_port" {
  description = "The port used for SSH connections"
  default     = 22
}

variable "tags" {
  description = "List fo extra tag blocks added to the autoscaling group configuration. Each element in the list is a map containing keys 'key', 'value', and 'propagate_at_launch' mapped to the respective values."
  type        = "list"
  default     = []

  # Example:
  #
  # default = [
  #   {
  #     key                 = "foo"
  #     value               = "bar"
  #     propagate_at_launch = true
  #   }
  # ]
}
