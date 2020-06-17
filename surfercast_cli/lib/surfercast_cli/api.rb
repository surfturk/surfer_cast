
class API
    BASE_URL = "https://api.coastal.ca.gov/access/v1/locations"

    def self.get_beach
      response = RestClient.get(BASE_URL)
       data = JSON.parse(response)
       
      data.collect do |beach_data|
        county = beach_data["COUNTY"]
        name = beach_data["NameMobileWeb"]
        location = beach_data["LocationMobileWeb"]
        description = beach_data["DescriptionMobileWeb"]
        fee = beach_data["FEE"]
        restrooms = beach_data["RESTROOMS"]
        visitor_ctr = beach_data["VISITOR_CTR"]
        dog_friendly = beach_data["DOG_FREINDLY"]

        binding.pry
        Beach.new(
            county: county,
            name: name,
            location: location,
            description: description,
            fee: fee,
            restrooms: restrooms,
            visitor_ctr: visitor_ctr,
            dog_friendly: dog_friendly
           )
      end

   
end

   
 
end

