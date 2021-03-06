require 'chefspec'
require 'chefspec/berkshelf'

# Require all our libraries
Dir.glob('libraries/*.rb').each { |f| require File.expand_path(f) }

RSpec.configure do |config|
  config.platform = 'centos'
  config.version = '7.0'
end

ChefSpec::Coverage.start!
