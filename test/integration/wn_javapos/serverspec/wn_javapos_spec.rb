require 'serverspec'

# Required by serverspec
set :backend, :exec

describe file("/opt/wn/javapos") do
  it { should be_directory }
end
