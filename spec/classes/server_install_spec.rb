require 'spec_helper'

describe 'mongodb::server::install', :type => :class do

  describe 'it should create package and dbpath file' do
    let(:pre_condition) { ["class mongodb::server {$version = '2.6.3' $package_ensure = true $dbpath = '/var/lib/mongo' $user = 'mongodb' $package_name = 'mongodb-server' }", "include mongodb::server"]}

    it {
      should contain_package('mongodb_server').with({
        :ensure => '2.6.3',
        :name   => 'mongodb-server',
      })
    }
  end

end
