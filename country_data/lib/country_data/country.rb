class Country
    attr_reader :name, :population, :capital, :region
    #what you cannot overwrite
    
    @@all = []
    
    def initialize(hash)
        hash.each do |k,v|
        self.send("#{k}=", v)
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
