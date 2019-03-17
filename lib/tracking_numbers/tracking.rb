class TrackingNumbers::Tracking

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
        tracking.carrier = doc.search("i.title").text.strip 
        tracking.status =doc.search("<span.data-newevents=").text.strip
        tracking.origin =doc.search("<span.Origin").text.strip
        tracking.destination = doc.search("<span.Destination").text.strip

  
end
