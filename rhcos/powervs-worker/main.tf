################################################################
# Copyright 2023 - IBM Corporation. All rights reserved
# SPDX-License-Identifier: Apache-2.0
################################################################

provider "ibm" {
  ibmcloud_api_key = var.ibmcloud_api_key
  region           = var.ibmcloud_region
  zone             = var.ibmcloud_zone
  #alias = "vpc"
}

provider "ibm" {
   ibmcloud_api_key = var.ibmcloud_api_key
   region           = var.powervs_region
   zone             = var.ibmcloud_zone
   alias            = "powervs"
}

# Create a random_id label
resource "random_id" "label" {
  count       = 1
  byte_length = "2" # Since we use the hex, the word lenght would double
}

locals {
  cluster_id = var.cluster_id == "" ? random_id.label[0].hex : (var.cluster_id_prefix == "" ? var.cluster_id : "${var.cluster_id_prefix}-${var.cluster_id}")
  # Generates vm_id as combination of vm_id_prefix + (random_id or user-defined vm_id)
  name_prefix = var.name_prefix == "" ? random_id.label[0].hex : "${var.name_prefix}"
  node_prefix = var.use_zone_info_for_names ? "${var.ibmcloud_zone}-" : ""
}

module "worker" {
  source     = "./modules/5_worker"

  providers = {
    ibm = ibm.powervs
  }

  service_instance_id = var.service_instance_id
  network_name        = var.network_name
  rhcos_image_name    = var.rhcos_image_name
  name_prefix         = local.name_prefix
  processor_type      = var.processor_type
  system_type         = var.system_type
  worker              = var.worker
  public_key_name     = var.public_key_name
  ignition_url        = var.ignition_url

  worker_version      = var.worker_version
}