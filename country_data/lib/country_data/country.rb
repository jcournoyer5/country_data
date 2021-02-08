class Country
    attr_reader :name, :population, :capital, :region
    #what you cannot overwrite
    
    def initialize(hash)
        hash.each do |k,v|
        @k = v
    end
    end
    #
end 

