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
  it { should be_running }
end

describe service('gunicorn') do
  it { should be_running }
end

describe service('nginx') do
  it { should be_running }
end
