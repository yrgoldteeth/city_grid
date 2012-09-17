require 'curb'
require 'json'

module CityGrid
  class Request
    def initialize uri, request_opts={}
      @uri = Config.base_url << uri
      @request_opts = request_opts.merge(default_opts)
    end

    def parsed_response
      JSON.parse(response)
    end

    private
    def default_opts
      {
        format: 'json',
        publisher: Config.api_key
      }
    end

    def response
      @response ||= make_request.body_str
    end

    def make_request
      Curl.get(@uri, @request_opts)
    end
  end
end

