xml.instruct!

xml.rss :version => "2.0", "xmlns:georss" => "http://www.georss.org/georss" do
 xml.channel do

   xml.title       "Epuka Disease Reporting System"
   xml.link        url_for :only_path => false, :controller => 'diseases'
   xml.description "List of diseases reported"

   @diseases.each do |disease|
     xml.item do
       xml.title       disease.name
       xml.link        url_for :only_path => false, :controller => 'diseases', :action => 'show', :id => disease.id
       xml.description disease.more_info
       xml.guid        url_for :only_path => false, :controller => 'diseases', :action => 'show', :id => disease.id
			 xml.georss :point do
					xml.text! disease.latitude.to_s + ' ' + disease.longitude.to_s
			end
     end
   end

 end
end
