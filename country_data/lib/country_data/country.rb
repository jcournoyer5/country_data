class Country
    attr_accessor :name, :population, :capital, :region, :lat_long, :currencies
   
    @@all = []
  
    def initialize(hash)
        self.name = hash[:name]
        self.population = hash[:population]
        self.capital = hash[:capital]
        self.region = hash[:region],
        self.lat_long = hash[:lat_long] #{country["latlng"][0]}, #{country["latlng"][1]}",
        self.currencies = hash[:currencies]
        save
    end

    def save
        @@all << self
    end

    def self.all
        @@all
    end

    # puts out basic data when asked for it, instance method
    def get_country_info
        puts "Name: #{self.name}"
        puts "Capital: #{self.capital}"
        puts "Population: #{self.population}"
    end 
    # find method to return a country obj when looked for by name
    def self.find_by_name(name)
        self.all.find {|country| country.name.downcase == name.downcase}
    end 
    
    def extra_info 
        puts "Region: #{self.region}"
        puts "Lat & Long: #{self.lat_long}"
        puts "Currencies: #{self.currencies}"
    end 
end