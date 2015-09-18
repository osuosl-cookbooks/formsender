#
# Cookbook Name:: formsender
# Recipe:: default
#
# Copyright 2015 Oregon State University
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

include_recipe 'formsender::_centos' if platform_family?('rhel')
include_recipe 'git'

python_webapp 'formsender' do
  create_user true
  owner node['formsender']['venv_owner']
  group node['formsender']['venv_group']

  repository node['formsender']['repository']
  revision node['formsender']['git_branch']

  config_template 'conf.py.erb'
  config_destination "#{node['formsender']['application_dir']}/source/conf.py"

  interpreter 'python2.7'

  gunicorn_port node['formsender']['gunicorn_port']
end
