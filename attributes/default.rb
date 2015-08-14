default['formsender']['application_dir'] = '/opt/formsender'
default['formsender']['config_dir'] = '/opt/formsender/config'
default['formsender']['venv_owner'] = 'root'
default['formsender']['venv_group'] = 'root'
default['formsender']['databag'] = 'pgsql'

default['formsender']['debug'] = false
default['formsender']['git_branch'] = '91eb2422806d44f819d85cbf2055bdea4c707df4'
default['formsender']['repository'] = 'https://github.com/osuosl/formsender'

default['formsender']['server_name'] = node['fqdn']
default['formsender']['gunicorn_port'] = 8080
default['formsender']['subdirectory'] = '' # add trailing slash if in a subdir
