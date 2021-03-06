require "visdiff/version"

require 'visdiff/client'
require 'visdiff/config'
require 'visdiff/image'
require 'visdiff/revision'

require 'visdiff/test_run'

module Visdiff
  def self.config
    @config ||= Config.new
    yield(@config) if block_given?
    @config
  end

  config.base_url = "http://www.visdiff.com/api"
end
