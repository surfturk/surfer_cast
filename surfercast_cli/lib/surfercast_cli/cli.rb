class Cli
  
    def run
     
        Beach.logo
        
       


        puts "Welcome to SurferCast, California's premier beach park finder!"

        puts ""

        puts "Please wait while we find all those tasty wave spots."

        puts ""
    
    API.get_beach
     puts "Thank you for your patience! After consulting with Poseidon, here are those beaches."
     
     puts ""

     print_main_menu
    end  

   def print_main_menu
    puts ""
    puts "Press 1 to list all beaches, counties and info"
    puts ""
    puts "Press 2 to list all counties"
    puts ""
    puts "Type 'exit' to exit program"
    puts ""
    user_input = gets.strip
    main_menu(user_input)

   end
      
   def main_menu(user_input)

    if user_input == "1"
        print_all_beaches_and_county_info
        print_main_menu
    elsif user_input == "2"  
        print_all_counties
        
        puts "Choose a county to look at all the beaches in that county"
        puts ""

       county_input = gets.strip 
       if Beach.counties.include?(county_input) 
         county_beaches = Beach.get_beaches_by_county(county_input)
         puts ""
         self.print_beaches_by_county(county_beaches)
         print_main_menu
         puts ""
       else puts "County does not exist, make sure to capitalize!"
        puts ""
         print_main_menu
       end  
         
    elsif user_input == "exit"
      goodbye
      exit
    else
        invalid_input
        print_main_menu
   end
end 

def print_all_beaches_and_county_info
    Beach.all.each do |beach|
        puts "County: #{beach.county}"
        puts "Name: #{beach.name}"
        puts "Location: #{beach.location}"
        puts "Description: #{beach.description}"
        puts "Fee: #{beach.fee}"
        puts "restrooms:  #{beach.restrooms}"
        puts "Parking: #{beach.parking}"
        puts ""
        puts ""
    end
 end

  def print_all_counties
    Beach.counties.uniq.each do |county|
        puts "#{county}"
       
    end
  end

  def print_beaches_by_county(arr)
    arr.each do |beach|
        puts "#{beach.name}"
    end
     
  end


   def goodbye
    puts ""
    puts "Thanks for stopping by. Go shred those barrels!"
    puts ""
   end


    def invalid_input
        puts ""
        puts "Woah surfer, we don't speak gibberish. Please try again."
        puts ""
    end
end