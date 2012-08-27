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

    def publish(channel, name, data)
      post(publish_url, {
        :channel => channel,
        :name    => name,
        :data    => to_json(data)
      })
    end

    def to_json(data)
      body = '{'
      body << (data.keys.inject [] do |params, key|
        params << "\"#{key.to_s}\":\"#{data[key]}\""
      end.join(','))
      body << '}'
    end

    def post(url, params)
      uri = URI.parse(url)
      body = params.map{|key,value| "#{escape(key.to_s)}=#{escape(value)}" }.join('&')
      Net::HTTP.start(uri.host, uri.port) do |http|
        http.post(uri.path, body)
      end
    end

    def escape(str)
      URI.escape(URI.escape(str), /[&+]/)
    end
  end
end
