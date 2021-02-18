class Country
    attr_accessor :name, :population, :capital, :region
    #reader and writer
    
    @@all = []
    #initializing with a hash, iterating through  hash to get the key and the value
    metaprogramming
    sendinght e
    if the key that I'm requesting execute it then saving it to @@all
    def initialize(hash)
        hash.each do |k,v|
        self.send("#{k}=", v) if self.respond_to?(("#{k}="))
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

