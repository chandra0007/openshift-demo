################################################################
# Copyright 2023 - IBM Corporation. All rights reserved
# SPDX-License-Identifier: Apache-2.0
################################################################

variable "service_instance_id" {
  type        = string
  description = "The cloud instance ID of your account"
  default     = ""
}

variable "network_name" {
  type        = string
  description = "The name of the network to be used for deploy operations"
  default     = "ocp-net"

  validation {
    condition     = var.network_name != ""
    error_message = "The network_name is required and cannot be empty."
  }
}

variable "rhcos_image_name" {
  type        = string
  description = "Name of the rhcos image that you want to use for the workers"
  default     = "rhcos-4.14"
}


variable "name_prefix" {
  type = string

  validation {
    condition     = length(var.name_prefix) <= 32
    error_message = "Length cannot exceed 32 characters for name_prefix."
  }
}

variable "processor_type" {
  type        = string
  description = "The type of processor mode (shared/dedicated)"
  default     = "shared"
}

variable "system_type" {
  type        = string
  description = "The type of system (s922/e980)"
  default     = "s922"
}

variable "worker" {
  type = object({ count = number, memory = string, processors = string })
  default = {
    count      = 1
    memory     = "16"
    processors = "1"
  }
  validation {
    condition     = lookup(var.worker, "count", 1) >= 1
    error_message = "The worker.count value must be greater than 1."
  }
}

variable "public_key_name" {
  type    = string
  default = "<none>"
}

variable "ignition_url" {
  type    = string
  description = "The URL to use for ignition"
  default = "<none>"
}

variable "worker_version" {}
