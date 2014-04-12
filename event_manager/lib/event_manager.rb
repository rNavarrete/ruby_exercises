require "csv"

def clean_zipcode(zipcode)
  puts "yes we in here."
  zipcode.to_s.rjust(5,"0")[0..4]
end

puts "Event Manager Initialized!"

content = CSV.open "event_attendees.csv", headers: true, header_converters: :symbol

content.each do |row|
  name = row[:first_name]
  zipcode = row[:zipcode]
  cleaned_zip = clean_zipcode(zipcode)
  puts "#{name} #{cleaned_zip}"
end  



  
