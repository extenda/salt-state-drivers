require 'serverspec'

# Required by serverspec
set :backend, :exec

describe file("/opt/dls") do
  it { should be_directory }
end
