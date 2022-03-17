variable "API_token" {
  description = "API token used to authenticate when calling the VMware Cloud Services API."
}

variable "org_id" {
  description = "Organization Identifier."
}

variable "aws_account_number" {
  description = "The AWS account number."
}

variable "sddc_name"{
  description = "Name of SDDC."
  default     = "Thomas-Terraform_ZERO"
}

variable "sddc_region" {
  description = "The AWS  or VMC specific region."
  default     = "us-west-2"
}

variable "sddc_mgmt_subnet" {
  description = "SDDC management network CIDR. Only prefix of 16, 20 and 23 are supported."
  default     = "10.2.0.0/16"
}

variable "sddc_client_net" {
  description = "A logical network segment that will be created with the SDDC under the compute gateway."
  default     = "192.168.2.0/24"
}

variable host_instance_type {
  description = "The instance type for the ESX hosts in the primary cluster of the SDDC. Possible values: I3_METAL, R5_METAL."
  default     = "I3_METAL"
}

variable sddc_num_hosts {
  description = "The number of hosts in SDDC."
  default     = "1"
}

variable provider_type {
  description = "Determines what additional properties are available based on cloud provider. Default value : AWS"
  default = "ZEROCLOUD"
}

variable sddc_type {
  description = "Denotes the sddc type, if the value is null or empty, the type is considered as default. Possible values : '1NODE', 'DEFAULT'. "
  default     = "1NODE"
}

variable size {
  description = "The size of the vCenter and NSX appliances. 'large' or 'LARGE' SDDC size corresponds to a large vCenter appliance and large NSX appliance. 'medium' or 'MEDIUM' SDDC size corresponds to medium vCenter appliance and medium NSX appliance. Default : 'medium'."
  default     = "medium"
}

variable deployment_type {
  description = "Denotes if request is for a SingleAZ or a MultiAZ SDDC. Default : SingleAZ."
  default     = "SingleAZ"
}
