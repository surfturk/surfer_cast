
class API
    BASE_URL = "https://api.coastal.ca.gov/access/v1/locations"

    def self.get_beach
      response = RestClient.get(BASE_URL)
       data = JSON.parse(response)
       
      data.each do |beach_data|
        county = beach_data["COUNTY"]
        name = beach_data["NameMobileWeb"]
        location = beach_data["LocationMobileWeb"]
        description = beach_data["DescriptionMobileWeb"]
        fee = beach_data["FEE"]
        parking = beach_data["PARKING"]
        restrooms = beach_data["RESTROOMS"]
       

        
        Beach.new(
            county: county,
            name: name,
            location: location,
            description: description,
            fee: fee,
            parking: parking,
            restrooms: restrooms
           )
           
      end
      
    end
end

