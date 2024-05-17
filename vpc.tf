resource "aws_vpc_dhcp_options" "dhcp-option-set-1" {
  domain_name_servers = ["8.8.8.8", "8.8.4.4"]
  domain_name = "bradgravesen.com"
  ntp_servers = ["129.6.15.28"]
}
import {
  to = aws_vpc_dhcp_options.dhcp-option-set-1
  id = "dopt-0b367bacc65f14a6d"
}

########################################################

resource "aws_vpc_dhcp_options" "dhcp-option-set-2" {
  domain_name_servers = ["8.8.8.8", "8.8.4.4"]
  domain_name = "dev.bradgravesen.com"
  ntp_servers = ["129.6.15.28"]
}
