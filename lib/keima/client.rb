require 'net/http'
module Keima
  class Client
    def initialize(base_url, appkey)
      @base_url = base_url
      @appkey = appkey
    end

    def publish_url
      @base_url + "/publish/" + @appkey
    end

    def jsFiles
      [ @base_url + '/socket.io/socket.io.js',
        @base_url + '/javascripts/keima.js' ]
    end

    def publish(channel, name, data)
      post(publish_url, {
        :channel => channel,
        :name    => name,
        :data    => data.to_json
      })
    end

    def post(url, params)
      uri = URI.parse(url)
      body = params.map{|key,value| "#{escape(key.to_s)}=#{escape(value)}" }.join('&')
      http = Net::HTTP.new(uri.host, uri.port)
      http.use_ssl = uri.scheme == 'https'
      http.start do |connection|
        connection.post(uri.path, body)
      end
    end

    def escape(str)
      URI.escape(URI.escape(str), /[&+]/)
    end
  end
end
