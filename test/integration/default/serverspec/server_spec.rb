require 'serverspec'

set :backend, :exec

# Test that gunicorn is listening on port 8080
describe port(8080) do
  it { should be_listening }
end
