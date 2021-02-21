require_relative "./country"
class Api
  attr_accessor :url
 
  def initialize 
    @url = "https://restcountries.eu/rest/v2/all"
  end
  
  def get_country_data
      response = HTTParty.get(url)
      rest = response
      rest.map do |country|
        
          country_hash = {
            name: country["name"],
            population: country["population"],
            capital: country["capital"],
            region: country["region"],
            lat_long: "#{country["latlng"][0]}, #{country["latlng"][1]}",
            currencies: country["currencies"][0]["name"]     
          } 
          Country.new(country_hash) 
      end
      
      return Country.all
  end      
end