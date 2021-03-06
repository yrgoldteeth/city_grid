module CityGrid
  class Reviews < Api
    def uri
      if request_opts.has_key?(:lat) && request_opts.has_key?(:lon)
        '/reviews/v2/search/latlon'
      else
        '/reviews/v2/search/where'
      end
    end
  end
end
