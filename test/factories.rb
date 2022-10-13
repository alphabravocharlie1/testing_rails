# require 'test/factories/*.rb'
Dir[Rails.root.join("test/factories/*.rb")].each {|file| require file }