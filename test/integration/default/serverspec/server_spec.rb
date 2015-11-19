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
  it { should exist }
  it do
    should contain("EMAIL = {'default': 'support@osuosl.org','support': \
'support@osuosl.org','root': 'root@osuosl.org'}")
  end
end
