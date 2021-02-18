class CLI
    
    
    def get_country_data_by_name(country_name, country_api)
      if country_name != "world"
        country = country_api.get_country_data(country_name)
      end
    end  
    
    
    
    
    def run #in control of running everything in this app
      puts "Welcome to Country Data Library"
      # country_api = Api.new("https://restcountries.eu/rest/v2/all")
      country_name = nil
      while country_name != "exit" 
        puts "Which country would you like to know about? or type 'world' for all country data"
        country_name = gets.strip.downcase
        if country_name != nil && country_name != "exit" && country_name != "world"
          country_api.get_country_data
        elsif country_name == "world"
         Country.all
         
        else
          return
        end    
    
    
      end
    
    puts "Thank you for checking out our Country Data Library!"
    end
    
end   