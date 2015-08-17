default['formsender']['application_dir'] = '/opt/formsender'
default['formsender']['config_dir'] = '/opt/formsender/config'
default['formsender']['venv_owner'] = 'root'
default['formsender']['venv_group'] = 'root'

default['formsender']['debug'] = false
default['formsender']['git_branch'] = '91eb2422806d44f819d85cbf2055bdea4c707df4'
default['formsender']['repository'] = 'https://github.com/osuosl/formsender'

default['formsender']['server_name'] = node['fqdn']
default['formsender']['gunicorn_port'] = 8080
default['formsender']['subdirectory'] = '' # add trailing slash if in a subdir

default['formsender']['conf_email'] = 'support@osuosl.org'
default['formsender']['conf_token'] = \
'15674hsda//*q23%^13jnxccv3ds54sa4g4sa532323!OoRdsfISDIdks38*(dsfjk)aS'
default['formsender']['conf_ceiling'] = 10
default['formsender']['conf_duplication_time'] = 3600
default['formsender']['conf_host'] = '0.0.0.0'
default['formsender']['conf_port'] = 5000
default['formsender']['conf_smtp_host'] = 'smtp.osuosl.org'
default['formsender']['conf_from'] = 'formsender@osuosl.org'
