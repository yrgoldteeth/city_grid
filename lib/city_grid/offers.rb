module CityGrid
  class Offers < Api
    def uri
      if request_opts.has_key?(:lat) && request_opts.has_key?(:lon)
        '/offers/v2/search/latlon'
      else
        '/offers/v2/search/where'
      end
    end
  end
end
