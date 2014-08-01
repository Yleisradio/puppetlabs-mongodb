require 'spec_helper'

describe 'mongodb::client::install', :type => :class do
  describe 'it should create package' do
    let(:pre_condition) { ["class mongodb::globals { $version = '2.6.3' }","class mongodb::client { $version = '2.6.3' $package_name = 'mongodb' }","include mongodb::globals", "include mongodb::client"]}
    it {
      should contain_package('mongodb_client').with({
        :ensure => '2.6.3',
        :name   => 'mongodb',
      })
    }
  end
  describe 'it should create package with latest' do
    let(:pre_condition) { ["class mongodb::client { $version = 'present' $package_name = 'mongodb' }", "include mongodb::client"]}
    it {
      should contain_package('mongodb_client').with({
        :ensure => 'present',
        :name   => 'mongodb',
      })
    }
  end
end
