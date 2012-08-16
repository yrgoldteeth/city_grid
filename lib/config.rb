module CityGrid
  module Config
    extend self

    def api_key
      ENV['CITY_GRID_API_KEY'] ||= raise "ENV var for CITY_GRID_API_KEY must be set"
    end

    def base_url
      'http://api.citygridmedia.com/content'
    end
  end
end
