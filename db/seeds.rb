# User.destroy_all

u1 = User.create :email => 'craigsy@ga.co', :password => 'chicken', :image => "http://media.supercheapauto.com.au/sports/images/zooms/402321-zoom.jpg",
:password_confirmation => 'chicken', :admin => true
u2 = User.create :email => 'jonsey@ga.co', :password => 'chicken', :image => "http://media.supercheapauto.com.au/sports/images/zooms/402321-zoom.jpg",
:password_confirmation => 'chicken', :admin => true

puts "User count: #{User.all.count}"

Sport.destroy_all

s1 = Sport.create :name => 'Tennis'
s2 = Sport.create :name => 'Badminton'
s3 = Sport.create :name => 'Snooker'

puts "Sports count: #{Sport.all.count}"


League.destroy_all
l1 = League.create :name => "Meow", :image => "http://media.supercheapauto.com.au/sports/images/zooms/402321-zoom.jpg"
l2 = League.create :name => "Roof", :image => "http://media.supercheapauto.com.au/sports/images/zooms/402321-zoom.jpg"
l3 = League.create :name => "Moo", :image => "http://media.supercheapauto.com.au/sports/images/zooms/402321-zoom.jpg"

puts "League count: #{League.all.count}"



Message.destroy_all
event = Message.create


Scoreboard.destroy_all
s1 = Scoreboard.create :name => 'One'
s2 = Scoreboard.create :name => 'Two'
s3 = Scoreboard.create :name => 'Three'
puts "Scoreboard count: #{Scoreboard.all.count}"
