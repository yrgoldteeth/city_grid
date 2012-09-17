module CityGrid
  class Reviews

    attr_reader :request_opts

    def initialize request_opts={}
      @request_opts = request_opts
    end

    def results
      request.parsed_response
    end

    def request
      @request ||= Request.new(uri, request_opts)
    end

    def uri
      if request_opts.has_key?(:lat) && request_opts.has_key?(:lon)
        '/reviews/v2/search/latlon'
      else
        '/reviews/v2/search/where'
      end
    end
  end
end
