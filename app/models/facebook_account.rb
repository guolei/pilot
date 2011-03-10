class FacebookAccount < SnsAccount

  def validate_token(oauth_verifier)
    RestClient.proxy = ENV['http_proxy']
    response = RestClient.get API.access_token_url, :params => {
      :client_id => API.client_id,
      :client_secret => API.client_secret,
      :code => oauth_verifier.html_safe
    }
    pair = response.body.split("&")[0].split("=")
    if (pair[0] == "access_token")
      self.access_token = pair[1]
      response = RestClient.get API.profile_url, :params => { :access_token => self.access_token }
      #      self.stream_url = JSON.parse(response.body)["link"]
    end
    self.save!
  end

  class API
    @@config = AppConfig["facebook"].with_indifferent_access

    def self.method_missing(method_name, *args)
      args.blank? ? @@config[method_name] : super
    end
  end
end
