default['formsender']['application_dir'] = '/opt/formsender'
default['formsender']['config_dir'] = '/opt/formsender/config'
default['formsender']['venv_owner'] = 'root'
default['formsender']['venv_group'] = 'root'
default['formsender']['databag'] = 'pgsql'
default['postgis']['template_name'] = nil

default['formsender']['debug'] = false
default['formsender']['git_branch'] = '229e64125442fc981a3b98d3e99fe077f913da01'
default['formsender']['repository'] = 'https://github.com/osuosl/formsender'

default['formsender']['server_name'] = node['fqdn']
default['formsender']['gunicorn_port'] = 8080
default['formsender']['access_log'] = "#{node['nginx']['log_dir']}" \
  '/formsender/access.log'
default['formsender']['error_log'] = "#{node['nginx']['log_dir']}" \
  '/formsender/error.log'
default['formsender']['subdirectory'] = '' # add trailing slash if in a subdir

override['python']['pip_location'] = "#{node['python']['prefix_dir']}" \
  '/bin/pip2.7'

if platform_family?('rhel')
  override['nginx']['default_site_enabled'] = false
  override['postgresql']['enable_pgdg_yum'] = true
  override['postgresql']['version'] = '9.3'
  override['postgresql']['server']['packages'] = %W(
    postgresql#{node['postgresql']['version'].gsub('.', '')}-server)
  override['postgresql']['client']['packages'] = %W(
    postgresql#{node['postgresql']['version'].gsub('.', '')}-devel
    libpqxx-devel)
  override['postgresql']['server']['service_name'] = 'postgresql-9.3'
end

default['postgis']['package'] = 'postgis2_93'

override['build-essential']['compile_time'] = true
