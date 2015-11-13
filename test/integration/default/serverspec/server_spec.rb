require 'serverspec'

set :backend, :exec

# Test that gunicorn is listening on port 8080
describe port(8080) do
  it { should be_listening }
end

describe port(80) do
  it { should be_listening }
end

describe service('formsender') do
  it { should be_running.under('supervisor') }
end

describe service('supervisor') do
  it { should be_running }
end

describe service('nginx') do
  it { should be_running }
end

describe file('/opt/formsender/source/conf.py') do
  default = "'default': 'support@osuosl.org'"
  support = "'support': 'support@osuosl.org'"
  root    = "'root': 'root@osuosl.org'"
  it { should exist }
  its(:content) { should match(/EMAIL = {#{default},#{support},#{root}}/) }
end
