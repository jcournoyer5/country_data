require "httparty"

class Api
    
    attr_accessor :url
    
    def initialize(url)
         @url = url
    end  
    
     def country_data
    #     #interpolate
         req_url= " #{@url}"
        
         data = HTTParty.get(req_url)
      puts data
        
     end    
    
end    
    # 
api = Api.new("https://restcountries.eu/rest/v2/all")    

api.country_data

