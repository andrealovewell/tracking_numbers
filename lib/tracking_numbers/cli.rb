class TrackingNumbers::CLI
  
  @@tracking_numbers =[]
  
  def call
    list_status
    enter_tracking
    goodbye
  end
  
  def list_status #gives status of tracking numbers
    
    puts "The status of this shipment is "
    @update = TrackingNumbers::Tracking.status
    @update.each.with_index(1) do |update, i|
      puts"#{tracking.carrier} - #{tracking.status} - #{tracking.origin} - #{tracking.destination}"
    end
  end

  def enter_tracking #enter # tracking numbers to search
    input = nil 
    
    while != "exit"
    puts "Enter the number of tracking numbers you would like to check status on  or type exit"
    input = gets.strip.downcase
    @@trackingrackingNumbers=[input]
  end
    
    puts "Enter each tracking number " #enter each tracking number
    TrackingNumbers.each do |i|
    tracking = gets.strip.downcase
    @@trackingrackingNumbers << tracking 
    end
  end

  def goodbye
    puts "goodbye"
  end
  
end
  
end