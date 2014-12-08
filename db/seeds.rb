# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.delete_all
Band.delete_all
Song.delete_all
Comment.delete_all
Tab.delete_all
UserBand.delete_all

users = User.create([

  {name: "Brandon", image: "http://assets.rollingstone.com/assets/images/story/jimi-hendrixs-early-recordings-as-a-sideman-to-get-proper-release-20140717/20140717-jimihendrix-x306-1405632285.jpg", email: "brandon@yuhas.com", password: "password1"},
  {name: "Sam", image: "http://wac.450f.edgecastcdn.net/80450F/ultimateclassicrock.com/files/2013/01/Eddie-Van-Halen.jpg",email: "sam@bar.com", password: "password1"},
  {name: "Andy", image: "http://blog.tiqiq.com/wp-content/uploads/2014/11/alice-cooper.jpg",email: "andy@kim.com", password: "password1"}

])

bands = Band.create([

  {name: "Lerd Zerpplin", motto: "Rock Or Die!", picture_url: "http://cdn1-www.craveonline.com/assets/uploads/2014/01/LedZeppelin1973_Gruen.jpg"},
  {name: "Alrice In Trains", motto: "Seattle Sucks", picture_url: "http://upload.wikimedia.org/wikipedia/en/4/43/AIC_Unplugged.jpg"}

])

songs = Song.create([
  
  {band_id: bands[0], artist: "Pink Floyd", title: "Eclipse", sound_url: "https://www.youtube.com/watch?v=pDxn0Xfqkgw"},
  {band_id: bands[0], artist: "Alice In Chains", title: "Down In A Hole", sound_url: "https://www.youtube.com/watch?v=pDxn0Xfqkgw"},
  {band_id: bands[1], artist: "The Doors", title: "Roadhouse Blues", sound_url: "https://www.youtube.com/watch?v=pDxn0Xfqkgw"},
  {band_id: bands[1], artist: "The Foo Fighters", title: "Everlong", sound_url: "https://www.youtube.com/watch?v=pDxn0Xfqkgw"}

])

comments = Comment.create([

  {user_id: users[0], song_id: songs[0], body: "Awesome Song! Too hard though..."},
  {user_id: users[1], song_id: songs[1], body: "Way too easy dude, I'm a rock god, remember?"},
  {user_id: users[1], song_id: songs[2], body: "Come on, I need a challenge"},
  {user_id: users[2], song_id: songs[3], body: "I love this song! Let's do it!"}

])

tabs = Tab.create([

  {song_id: songs[0], source_url: "www.google.com", rank: 3},
  {song_id: songs[1], source_url: "www.yahoo.com", rank: 5},
  {song_id: songs[2], source_url: "www.ultimate-guitar.com", rank: 1},
  {song_id: songs[3], source_url: "www.soundcloud.com", rank: 4}

])

user_bands = UserBand.create([

  {user_id: users[0], band_id: bands[0]},
  {user_id: users[1], band_id: bands[0]},
  {user_id: users[1], band_id: bands[1]},
  {user_id: users[2], band_id: bands[1]}

])
