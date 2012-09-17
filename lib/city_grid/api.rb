module CityGrid
  class Api

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
      raise "must be called from a subclass of Api"
    end
  end
end
