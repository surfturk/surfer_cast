class Beach 
  attr_accessor :county, :name, :location, :description, :fee, :parking,
   :restrooms

   @@all = []
   @@counties = []
   


def initialize(county:, name:, location:, description:, fee:, parking:,  
    restrooms:)
    self.county = county
    self.name = name
    self.location = location
    self.description = description
    self.fee = fee
    self.parking = parking
    self.restrooms = restrooms
    self.save
    @@counties << self.county
end

def self.all
    @@all
end

def save 
    @@all << self
 end    


def self.counties
  @@counties
end

def self.get_beaches_by_county(county)
    output = []
   @@all.each do |beach|
    if beach.county == county
        output << beach
    end  
  end
  output
end


def self.logo
    puts "
    ███████ ██    ██ ██████  ███████ ███████ ██████   ██████  █████  ███████ ████████ 
    ██      ██    ██ ██   ██ ██      ██      ██   ██ ██      ██   ██ ██         ██    
    ███████ ██    ██ ██████  █████   █████   ██████  ██      ███████ ███████    ██    
         ██ ██    ██ ██   ██ ██      ██      ██   ██ ██      ██   ██      ██    ██    
    ███████  ██████  ██   ██ ██      ███████ ██   ██  ██████ ██   ██ ███████    ██    
                                                                                      
                                                                                      
    "
  end    





end




