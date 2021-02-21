
class CLI

    def get_country_data_by_index
      puts "please select a country by the number: "
      input = gets.strip
     
      if input.to_i >= 0 && input.to_i <= Country.all.length 
        
        country = Country.all[input.to_i - 1]
        print_country_info(country)
      end
    end

    def get_country_by_name
      puts "Please type the country name then enter to search"
      input = gets.strip
      country = Country.find_by_name(input)
      if country 
        print_country_info(country)
      else 
        puts "oops can't find that country try again please!"
      end 
    end

    def print_country_info(country)
      country.get_country_info
        puts "would you like more info?"
        get_more_info(country)
    end

    def get_more_info(country)
      #check input to see if they should get additional info 
      input = gets.strip 
      if input == "yes" ||input == "y"
        #print extra info
        country.extra_info
      end
    end

    def list_countries
      
      Country.all.each.with_index(1) do |country, index| 
        puts "#{index}. #{country.name}"
      end 
    end
 
    def run 
      puts "Welcome to Country Data Library"
      
      api = Api.new 
     
      api.get_country_data
      
      input = nil

      while input != "exit" 
        puts "If you would like to select from the list type 'list', if you would like to search by name please type 'name'. To exit, type 'exit'"
        input = gets.strip.downcase

        if input == "list"
          
          list_countries
         
          get_country_data_by_index
        elsif input == "name"
          
          get_country_by_name
        elsif input == "exit" 
          
          puts "goodbye"
          break
        else 
          
          puts "oops, i don't know what you want to do :(. Invalid input of '#{input}'"
        end
      end 
    end 
end   