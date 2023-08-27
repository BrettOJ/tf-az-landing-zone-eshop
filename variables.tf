variable "resource_group_name" {
  type = string
}


variable "aks_name" {
  type = string
}

variable "location" {
  type    = string
  default = "southeastasia"
}

variable "sku" {
  description = "(Required) sku for log analytics workspace. (Premium, Standard, Standalone, Unlimited, and PerGB2018)"
}

variable "subnet_name" {
  type = string
}

variable "create_nsg" {
  type    = bool
  default = true
}
  

variable "dependencies" {
  description = "List of dependecies modules or resources"
  default     = null
}

variable "allow_resource_only_permissions" {
  description = "(Optional) Specifies if the log Analytics Workspace allow users accessing to data associated with resources they have permission to view, without permission to workspace. Defaults to true."
  type        = bool
  default     = true
}

variable "local_authentication_disabled" {
  description = "(Optional) Specifies if the log Analytics workspace should enforce authentication using Azure AD. Defaults to false."
  type        = bool
  default     = false
}

variable "retention_in_days" {
  description = "(Optional) The workspace data retention in days. Possible values are either 7 (Free Tier only) or range between 30 and 730."
  type        = number
  default     = 30
}

variable "daily_quota_gb" {
  description = "(Optional) The workspace daily quota for ingestion in GB. Defaults to -1 (unlimited) if omitted."
  type        = number
  default     = -1
}

variable "cmk_for_query_forced" {
  description = "(Optional) Is Customer Managed Storage mandatory for query management?"
  type        = bool
  default     = false
}

variable "internet_ingestion_enabled" {
  description = "(Optional) Should the Log Analytics Workspace support ingestion over the Public Internet? Defaults to true."
  type        = bool
  default     = true
}

variable "internet_query_enabled" {
  description = "(Optional) Should the Log Analytics Workspace support querying over the Public Internet? Defaults to true."
  type        = bool
  default     = true
}

variable "reservation_capacity_in_gb_per_day" {
  description = "(Optional) The capacity reservation level in GB for this workspace. Possible values are 100, 200, 300, 400, 500, 1000, 2000 and 5000."
  type        = number
  default     = 100
}


variable "linux_admin_username" {
  type = string
}

variable "private_cluster_enabled" {
  type        = bool
  default     = true
  description = "(Optional) Specify to create AKS with private end point for control plane"
}

# variable "enable_pod_security_policy" {
#   description = "(Required) Enable Pod Security Policy"
#   default     = false
#   type        = bool
# }

variable "automatic_channel_upgrade" {
  type        = string
  description = "set the upgrade option for the cluster"
  default     = "none"
}

variable "azure_policy_enabled" {
  type    = bool
  default = false
}

variable "role_based_access_control_enabled" {
}
variable "azure_active_directory_role_based_access_control_managed" {
  
}

variable "azure_active_directory_role_based_access_control_tennant_id" {
  
}

variable "http_application_routing_enabled" {
  
}

variable "aks_node_rg" {
  type = string
}

#autoscaler profile varibles
variable "balance_similar_node_groups" {}
variable "expander" {}
variable "max_graceful_termination_sec" {}
variable "max_node_provisioning_time" {}
variable "max_unready_nodes" {}
variable "max_unready_percentage" {}
variable "new_pod_scale_up_delay" {}
variable "scale_down_delay_after_add" {}
variable "scale_down_delay_after_delete" {}
variable "scale_down_delay_after_failure" {}
variable "scan_interval" {}
variable "scale_down_unneeded" {}
variable "scale_down_unready" {}
variable "scale_down_utilization_threshold" {}
variable "empty_bulk_delete_max" {}
variable "skip_nodes_with_local_storage" {}
variable "skip_nodes_with_system_pods" {}

#Default node pool variables
variable "default_node_pool_name" {}
variable "default_node_pool_vm_size" {}
variable "default_node_pool_enable_auto_scaling" {}
variable "default_node_pool_max_pods" {}
variable "default_node_pool_os_disk_size_gb" {}
variable "default_node_pool_min_count" {}
variable "default_node_pool_max_count" {}
variable "default_node_pool_orchestrator_version" {}
variable "default_node_pool_capacity_reservation_group_id" {}
variable "default_node_pool_custom_ca_trust_enabled" {}
variable "default_node_pool_zones" {}
variable "default_node_pool_enable_host_encryption" {}
variable "default_node_pool_enable_node_public_ip" {}
variable "default_node_pool_host_group_id" {}
variable "kubelet_config_allowed_unsafe_sysctls" {}
variable "kubelet_config_container_log_max_line" {}
variable "kubelet_config_container_log_max_size_mb" {}
variable "kubelet_config_cpu_cfs_quota_enabled" {}
variable "kubelet_config_cpu_cfs_quota_period" {}
variable "kubelet_config_cpu_manager_policy" {}
variable "kubelet_config_image_gc_high_threshold" {}
variable "kubelet_config_image_gc_low_threshold" {}
variable "kubelet_config_pod_max_pid" {}
variable "kubelet_config_topology_manager_policy" {}
variable "aks_cplane_identity_info_type" {}
variable "linux_os_config_swap_file_size_mb" {}
variable "sysctl_config_fs_aio_max_nr" {}
variable "sysctl_config_fs_file_max" {}
variable "sysctl_config_fs_inotify_max_user_watches" {}
variable "sysctl_config_fs_nr_open" {}
variable "sysctl_config_kernel_threads_max" {}
variable "sysctl_config_net_core_netdev_max_backlog" {}
variable "sysctl_config_net_core_optmem_max" {}
variable "sysctl_config_net_core_rmem_default" {}
variable "sysctl_config_net_core_rmem_max" {}
variable "sysctl_config_net_core_somaxconn" {}
variable "sysctl_config_net_core_wmem_default" {}
variable "sysctl_config_net_core_wmem_max" {}
variable "sysctl_config_net_ipv4_ip_local_port_range_max" {}
variable "sysctl_config_net_ipv4_ip_local_port_range_min" {}
variable "sysctl_config_net_ipv4_neigh_default_gc_thresh1" {}
variable "sysctl_config_net_ipv4_neigh_default_gc_thresh2" {}
variable "sysctl_config_net_ipv4_neigh_default_gc_thresh3" {}
variable "sysctl_config_net_ipv4_tcp_fin_timeout" {}
variable "sysctl_config_net_ipv4_tcp_keepalive_intvl" {}
variable "sysctl_config_net_ipv4_tcp_keepalive_probes" {}
variable "sysctl_config_net_ipv4_tcp_keepalive_time" {}
variable "sysctl_config_net_ipv4_tcp_max_syn_backlog" {}
variable "sysctl_config_net_ipv4_tcp_max_tw_buckets" {}
variable "sysctl_config_net_ipv4_tcp_tw_reuse" {}
variable "sysctl_config_net_netfilter_nf_conntrack_buckets" {}
variable "sysctl_config_net_netfilter_nf_conntrack_max" {}
variable "sysctl_config_vm_max_map_count" {}
variable "sysctl_config_vm_swappiness" {}
variable "sysctl_config_vm_vfs_cache_pressure" {}
variable "default_node_pool_fips_enabled" {}
variable "default_node_pool_transparent_huge_page_defrag" {}
variable "default_node_pool_transparent_huge_page_enabled" {}
variable "default_node_pool_kubelet_disk_type" {}
variable "default_node_pool_message_of_the_day" {}
variable "node_network_profile_node_public_ip_tags" {}
variable "default_node_pool_node_public_ip_prefix_id" {}
variable "default_node_pool_node_labels" {}
variable "default_node_pool_node_taints" {}
variable "default_node_pool_only_critical_addons_enabled" {}
variable "default_node_pool_os_disk_type" {}
variable "default_node_pool_os_sku" {}
variable "default_node_pool_pod_subnet_id" {}
variable "default_node_pool_proximity_placement_group_id" {}
variable "default_node_pool_scale_down_mode" {}
variable "default_node_pool_type" {}
variable "default_node_pool_tags" {}
variable "default_node_pool_ultra_ssd_enabled" {}
variable "upgrade_settings_max_surge" {}
variable "default_node_pool_vnet_subnet_id" {}
variable "default_node_pool_node_count" {}
variable "default_node_pool_workload_runtime" {}


variable "kubernetes_version" {
  description = "(Optional) Version of Kubernetes specified when creating the AKS managed cluster"
  default     = ""
}


variable "secret_rotation_enabled" {
  type        = bool
  description = "enables the Azure AKS CSI secrets driver for AKV"
  default     = true
}

variable "secret_rotation_interval" {
  type        = string
  description = "secret rotation interval check"
  default     = "2m"
}

#kubelet Identity variables
variable "client_id" {
  type    = string
  default = null
}
variable "object_id" {
  type    = string
  default = null
}
variable "user_assigned_identity_id" {
  type    = string
  default = null
}

variable "ingress_application_gateway_gateway_id" {
  default = null
}

variable "ingress_application_gateway_gateway_name" {
  default = null
}

variable "ingress_application_gateway_subnet_cidr" {
  default = null
}

variable "ingress_application_gateway_subnet_id" {
  default = null
}

variable "maintenance_window_allowed_day" {
  type = string
  default = "Sunday"
}

variable "maintenance_window_allowed_hours" {
  type = list(number)
  default = [1, 2]
}

variable "maintenance_window_not_allowed_end" {
   type = string
}

variable "maintenance_window_not_allowed_start" {
  type = string
}

