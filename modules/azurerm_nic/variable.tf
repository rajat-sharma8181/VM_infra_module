variable "nic" {
  type = map(object({
    nic_name            = string
    nic_location        = string
    resource_group_name = string
    ip_name = string
    private_ip_address_allocation = string
    subnet_name = string
    virtual_network_name = string
    pip_name = string
  }))
}
