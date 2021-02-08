require "httparty"
require 'net/http'
require 'open-uri'
require 'json'
require_relative "./country"

class Api
    
    URL = "https://restcountries.eu/rest/v2/all"
    
    attr_accessor :url
    
    def initialize(url)
     @url = url
    end

    def all_country_data
        uri = URI.parse(URL)
        response = Net::HTTP.get_response(uri)
        response.body
    end 
    #method that uses the NET::HTTP library to send an HTTP request from our program. 
    #NET::HTTP is a Ruby library that allows your program or application to send HTTP requests. 
    #We require it at the top of our file with the require statement. 
    #We also require the URI library which helps Ruby to handle URIs.
    #Both NET::HTTP (Links to an external site.) and URI (Links to an external site.) are classes built into Ruby.

    def parse_json
    JSON.parse(country_data)
    puts country_data
    end 
end    
#     def get_country_data
#         req_url="#{url}"
#     end

# end  

# # api.country_data


# data = HTTParty.get(req_url)  
# puts data

# api = Api.new("https://restcountries.eu/rest/v2/all")  

# country_hash = {
#     name: data["name"],
#     population: data["population"],
#     capital: data["capital"],
#     region: data ["region"]
    
# }

# c = Country.new({name: "Spain"})