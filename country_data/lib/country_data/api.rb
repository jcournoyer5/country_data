require "pry"
require "httparty"
require_relative "./country"

class Api
    
  def self.get_country_data
      response = HTTParty.get("https://restcountries.eu/rest/v2/all")
      rest = response
      rest.map do |countries| #mapping over the api
          # binding.pry
         Country.new(countries) #instantiating 
          
      end
  end      

end

x = Api.get_country_data
puts x

# class Api
    
#     attr_accessor :url
    
#     def initialize(url)
#      @url = url
#     end

#     def get_country_data
#         req_url="#{url}"
#         data = HTTParty.get(req_url) 
#     data.each do |country|
#         country_hash = {
#          name: country["name"],
#          population: country["population"],
#          capital: country["capital"],
#          region: country["region"]
        
#     } 
    
#         country = Country.new(country_hash)
        
#     end  
    
#     end
    
# end
        
# api = Api.new("https://restcountries.eu/rest/v2/all")  

# api.get_country_data




