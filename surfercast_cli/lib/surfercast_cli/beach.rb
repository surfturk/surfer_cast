class Beach 
  attr_accessor :county, :name, :location, :description, :fee, :parking,
   :restrooms, :visitor_ctr, :dog_friendly

   @@all = []



def initialize(county:, name:, location:, description:, fee:,  
    restrooms:, visitor_ctr:, dog_friendly:)
    self.county = county
    self.name = name
    self.location = location
    self.description = description
    self.fee = fee
    #self.parking = parking
    self.restrooms = restrooms
    self.visitor_ctr = visitor_ctr
    self.dog_friendly = dog_friendly
    self.save
end

def save 
    @@all << self
 end    
end






