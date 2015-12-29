require 'spec_helper'

describe 'application::default' do
  # Serverspec examples can be found at
  # http://serverspec.org/resource_types.html

  describe file('/etc/apache2/mods-enabled/dir.conf') do
    its(:content) { should match /DirectoryIndex index.php/ }
  end

  describe file('/var/www/html/info.php') do
    its(:content) { should match /.+phpinfo();.+/ }
  end
end
