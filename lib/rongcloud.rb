
require 'rongcloud/sign'
require 'rongcloud/token'

module RongCloud
  class << self
    attr_accessor :app_key, :app_secret
  end
end
