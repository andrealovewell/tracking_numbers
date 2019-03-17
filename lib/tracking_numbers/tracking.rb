class TrackingNumbers::Tracking
  
  attr_accessor :carrier, :status, :origin, :destination

  def self.status
    self.scrape_trackingUpdate
  end
  
  def.scrape_trackingUpdate
    update =[]
    
    update == self.scape_seventeenTrack
    
    update
  end
  
  def self.scrape_seventeenTrack
    
    update = self.new 
    
    TrackingNumbers.each do |i|
        doc = Nokogiri::HTML(open("https://t.17track.net/en#nums=" +i))
        update.carrier = doc.search("i.title").text.strip 
        update.status =doc.search("<span.data-newevents=").text.strip
        update.origin =doc.search("<span.Origin").text.strip
        update.destination = doc.search("<span.Destination").text.strip
        
       update
      end
  end
  
  
end
