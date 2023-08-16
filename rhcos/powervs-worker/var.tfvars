################################################################
# Copyright 2023 - IBM Corporation. All rights reserved
# SPDX-License-Identifier: Apache-2.0
################################################################

### IBM Cloud details
ibmcloud_api_key    = "<key>"
ibmcloud_region     = "<region>"
ibmcloud_zone       = "<zone>"
service_instance_id = "<cloud_instance_ID>"

# Machine Details
worker            = { memory = "16", processors = "0.5", "count" = 1 }
cluster_id_prefix = rdr-multi

rhcos_image_name = "rhcos-414-92-202307041358-t1"

ignition_url = "192.168.200.53"

# PowerVS configuration
processor_type  = "shared"
system_type     = "e980"
network_name    = "DHCPSERVERcc-vpc-dhcp_Private"
public_key_name = "pbastide_key"