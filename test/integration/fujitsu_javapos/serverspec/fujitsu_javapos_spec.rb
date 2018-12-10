require 'serverspec'

# Required by serverspec
set :backend, :exec

describe file("/opt/Fujitsu") do
  it { should be_directory }
end
