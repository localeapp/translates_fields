require 'active_record'
require 'translates_fields/translates_fields'

root = File.expand_path(File.join(File.dirname(__FILE__), '..'))
FileUtils.mkdir("#{root}/db") unless File.exist?("#{root}/db")
ActiveRecord::Base.establish_connection(
  :adapter  => 'sqlite3',
  :database => "#{root}/db/test.sqlite")

RSpec.configure do |config|
end