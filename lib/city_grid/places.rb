module CityGrid
  class Places < Api
    def uri
      if request_opts.has_key?(:lat) && request_opts.has_key?(:lon)
        '/places/v2/search/latlon'
      else
        '/places/v2/search/where'
      end
    end
  end
end
