default['formsender']['application_dir'] = '/opt/formsender'
default['formsender']['config_dir'] = '/opt/formsender/config'
default['formsender']['venv_owner'] = 'root'
default['formsender']['venv_group'] = 'root'
default['formsender']['databag'] = 'pgsql'
default['postgis']['template_name'] = nil

default['formsender']['debug'] = false
default['formsender']['git_branch'] = '0e39f8cfb494c2105b30eda65c5c47a71f05c9a1'
default['formsender']['repository'] = 'https://github.com/osuosl/formsender'

default['formsender']['server_name'] = node['fqdn']
default['formsender']['gunicorn_port'] = 8080
default['formsender']['subdirectory'] = '' # add trailing slash if in a subdir

override['python']['pip_location'] = "#{node['python']['prefix_dir']}" \
  '/bin/pip2.7'

if platform_family?('rhel')
  override['nginx']['default_site_enabled'] = false
end

override['build-essential']['compile_time'] = true
