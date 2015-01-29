require 'digest/sha1'

module RongCloud
  module Sign
    def self.generate(nonce, timestamp)
      str = [RongCloud.app_secret, nonce, timestamp].join('')
      Digest::SHA1.hexdigest(str)
    end

  end
end
