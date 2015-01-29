require 'json'
require 'rest_client'

module RongCloud
  module Token
    def self.generate(user_id, user_name, portrait_uri)
      url = "https://api.cn.rong.io/user/getToken.json"
      
      params = {
        userId: user_id,
        name: user_name,
        #portraitUrl: portrait_uri,
      }
      p params
      nonce = SecureRandom.hex(16)
      timestamp = Time.now.to_i.to_s
      sign = Sign.generate(nonce, timestamp)
      
      RestClient.post(url, params, :'App-Key' => RongCloud.app_key, :Nonce => nonce, :Timestamp => timestamp, :Signature => sign  ) do |response|
        JSON.parse(response.body, symbolize_names: true)
      end
    end
  end
end
