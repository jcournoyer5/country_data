class Api
    
    attr_accessor :url
    
    def initialize(url)
     @url = url
    end

    def get_country_data
        req_url="#{url}"
        data = HTTParty.get(req_url) 
        
    country_hash = {
         name: data["name"],
         population: data["population"].first["population"]["name"],
         capital: data["capital"].first["capital"]["name"],
         region: data ["region"].first["region"]["name"] 
        
    } 
    
        country = Country.new(country_hash)
        puts country.name
    end
    
end
        
api = Api.new("https://restcountries.eu/rest/v2/all")  

api.get_country_data





