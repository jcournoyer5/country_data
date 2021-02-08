class Country
    attr_reader :name, :population, :capital, :region
    #what you cannot overwrite
    
    @@all = []
    
    def initialize(hash)
        hash.each do |k,v|
        @k = v
    end
    @@all << self
    end
    
    def save
        @@all << self
    end
    
    def self.all
        @@all
    end    

       


end

require "httparty"


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
    end
    
end
        
api = Api.new("https://restcountries.eu/rest/v2/all")  

api.get_country_data

puts Country.all



