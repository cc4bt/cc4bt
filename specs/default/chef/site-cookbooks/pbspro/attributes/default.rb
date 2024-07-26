# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License.
#
# 

default[:pbspro][:autoscale_version] = "2.0.21"
default[:pbspro][:autoscale_installer] = "cyclecloud-pbspro-pkg-#{node[:pbspro][:autoscale_version]}.tar.gz"
default[:pbspro][:cron_method] = "pbs_cron"
default[:pbspro][:version] = "20.0.1-0"
default[:pbspro][:slots] = nil
default[:pbspro][:idle_timeout] = 300
default[:pbspro][:boot_timeout] = 3600
default[:pbspro][:hwlocs_lib_el8] = "hwloc-libs-1.11.9-3.el8.x86_64.rpm"

default[:pbspro][:queues][:workq][:ignore] = false
default[:pbspro][:queues][:htcq][:ignore] = false

default[:pbspro][:is_grouped] = true

default[:pbspro][:autoscale_hook][:__comment__] = "This file was generated by serializing node[:cyclecloud][:pbspro][autoscale_hook]."

# pass through to the hook config json file
default[:pbspro][:autoscale_project_home] = "#{node[:cyclecloud][:home]}/../pbspro"
