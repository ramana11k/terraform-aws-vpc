variable "cidr_block" {
    default = "10.0.0.0/16"  
}

variable "common_tags" {
    default = {}  
}

variable "vpc_tags" {
    default = {}  
}

variable "project_name" {
    default = {}  
}

variable "environment" {
    default = {}  
}

variable "public_subnet_cidr" {
    type = list
    validation {
      condition = length(var.public_subnet_cidr) == 2
      error_message = "Please provide 2 valid public subnet cidrs"
    }
    
}

variable "public_subnet_tags" {
    default = {}  
}

variable "private_subnet_cidr" {
    type = list
    validation {
      condition = length(var.private_subnet_cidr) == 2
      error_message = "Please provide 2 valid private subnet cidrs"
    }
    
}

variable "private_subnet_tags" {
    default = {}  
}


variable "database_subnet_cidr" {
    type = list
    validation {
      condition = length(var.database_subnet_cidr) == 2
      error_message = "Please provide 2 valid database subnet cidrs"
    }
    
}

variable "database_subnet_tags" {
    default = {}  
}

variable "nat_gateway_tags" {
    default = {}  
}

variable "route_table_tags" {
    default = {}  
}

variable "public_route_table_tags" {
    default = {}  
}

variable "private_route_table_tags" {
    default = {}  
}

variable "database_route_table_tags" {
    default = {}  
}

variable "is_peering_required" {
    type = bool
    default = false  
}

variable "acceptor_vpc_id" {
    type = string
    default = ""  
}

variable "vpc_peering_tags" {
    default = {}  
}

