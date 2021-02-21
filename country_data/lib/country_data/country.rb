class Country
    attr_accessor :name, :population, :capital, :region, :lat_long, :currencies
    #reader and writer
    @@all = []
    #initializing with a hash, iterating through  hash to get the key and the value
    # metaprogramming
    # sendinght e
    # if the key that I'm requesting execute it then saving it to @@all
    def initialize(hash)
        hash.each do |k,v|
            # self is an instance => send has as many args as we pass, first one is a method, the rest are the args the method we pass as the first arg as arguments (ask me if you have more questions on this)
        self.send("#{k}=", v) if self.respond_to?(("#{k}="))
    end
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
    # isntance method, puts out the "extra" info
    def extra_info 
        puts "Region: #{self.region}"
        puts "Lat & Long: #{self.lat_long}"
        puts "Currencies: #{self.currencies}"
    end 
end