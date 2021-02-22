class Country
    attr_accessor :name, :population, :capital, :region, :lat_long, :currencies
   
    @@all = []
  
    def initialize(hash)
        hash.each do |k,v|
            if self.respond_to?(("#{k}=")) # if the key is a valid attribute
                self.send("#{k}=", v) # set the attribute equal to the value in the hash
            end
        end
        save
    end

    def save
        @@all << self
    end

    def self.all
        @@all
    end

    
    def get_country_info
        puts "Name: #{self.name}"
        puts "Capital: #{self.capital}"
        puts "Population: #{self.population}"
    end 
    
    def self.find_by_name(name)
        self.all.find {|country| country.name.downcase == name.downcase}
    end 
    
    def extra_info 
        puts "Region: #{self.region}"
        puts "Lat & Long: #{self.lat_long}"
        puts "Currencies: #{self.currencies}"
    end 
end