#
# Cookbook Name:: formsender
# Recipe:: nginx
#
# Copyright 2015, Oregon State University
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

include_recipe 'osl-nginx'

nginx_app 'formsender' do
  template 'nginx.erb'
  cookbook 'formsender'
end

selinux_policy_boolean 'httpd_can_network_connect' do
  value true
  notifies :start, 'service[nginx]', :immediate
end

if platform_family?('rhel')
  node.override['nginx']['default_site_enabled'] = false
end
