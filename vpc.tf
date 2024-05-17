resource "aws_vpc_dhcp_options" "dhcp-option-set-1" {
  domain_name_servers = ["8.8.8.8", "8.8.4.4"]
}
import {
  to = aws_vpc_dhcp_options.dhcp-option-set-1
  id = "dopt-0b367bacc65f14a6d"
}