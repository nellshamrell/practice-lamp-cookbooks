require 'spec_helper'

describe 'mysql::default' do
  # Serverspec examples can be found at
  # http://serverspec.org/resource_types.html
  describe package('mysql-server') do
    it { should be_installed }
  end

  describe package('php5-mysql') do
    it { should be_installed }
  end
end
