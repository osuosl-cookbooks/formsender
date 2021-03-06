default['formsender']['application_dir'] = '/opt/formsender'
default['formsender']['config_dir'] = '/opt/formsender/config'
default['formsender']['venv_owner'] = 'root'
default['formsender']['venv_group'] = 'root'

default['formsender']['debug'] = false
default['formsender']['git_branch'] = 'master'
default['formsender']['repository'] = 'https://github.com/osuosl/formsender'

default['formsender']['server_name'] = node['fqdn']
default['formsender']['gunicorn_port'] = 8080
default['formsender']['subdirectory'] = '' # add trailing slash if in a subdir

default['formsender']['emails']['default'] = 'support@osuosl.org'
default['formsender']['emails']['support'] = 'support@osuosl.org'
default['formsender']['emails']['root'] = 'root@osuosl.org'
default['formsender']['conf_token'] = \
'15674hsda//*q23%^13jnxccv3ds54sa4g4sa532323!OoRdsfISDIdks38*(dsfjk)aS'
default['formsender']['conf_ceiling'] = 10
default['formsender']['conf_duplication_time'] = 3600
default['formsender']['conf_host'] = '0.0.0.0'
default['formsender']['conf_port'] = 5000
default['formsender']['conf_smtp_host'] = 'smtp.osuosl.org'
default['formsender']['conf_from'] = 'formsender@osuosl.org'
default['formsender']['conf_log_addr'] = '/dev/log'

default['formsender']['error_log'] = '/var/log/nginx/formsender/error.log'
default['formsender']['access_log'] = '/var/log/nginx/formsender/access.log'
