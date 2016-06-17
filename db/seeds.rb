# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



User.create([{ name: 'Alana', email: "alana@test.com", password: "password1" }, { name: 'Robin', email: "robin@test.com", password: "password1" }])

Art.create([
  { name: 'Starry Night 2: Star Harder', description: 'Real good stuff, kiddo', img_link: 'http://orig07.deviantart.net/6eb5/f/2016/055/e/3/untitled_drawing_by_starry_night_dog-d9szaa8.png', user: User.first}, 
  { name: 'Robin Elbow Bowls', description: 'Eww', img_link: 'https://notwashingtonirving.files.wordpress.com/2015/11/elbow.gif', user: User.first}
  ])
Art.create([
  { name: 'Razzle Dazzle', description: 'A little Razzle, A LOTTA DAZZLE', img_link: 'http://www.graphicine.com/wp-content/uploads/2014/02/1417729_537468716336813_243128434_o.jpg', user: User.last},
 {name: 'Razzle Dazzle', description: 'A little Razzle, A LOTTA DAZZLE', img_link: 'http://i43.tinypic.com/w6qown.jpg', user: User.last},
  { name: 'SHAMON! HEEHEE!', description: 'Real good stuff, kiddo', img_link: 'http://blogs.uoregon.edu/ttow/files/2014/05/michael-jackson-art-hd-wallpapers-231r1lx.jpg', user: User.first}, 
  { name: 'Friction Fish #4', description: 'Eww', img_link: 'https://upload.wikimedia.org/wikipedia/commons/2/20/Statuette_Mambia_Nig%C3%A9ria.jpg', user: User.first},
   { name: 'Awesome in a box!', description: 'Eww', img_link: 'http://art.ngfiles.com/images/432000/432743_jcarignan443_above-the.jpg', user: User.first},
    { name: 'Damn Commies', description: 'Eww', img_link: 'http://i.imgur.com/a0CC7b5.jpg', user: User.first},
        { name: 'For Alana', description: 'Eww', img_link: 'http://vignette1.wikia.nocookie.net/shrek/images/b/b3/Shrek_2_Movie_Poster.jpg/revision/latest?cb=20120215074336', user: User.first}
  ])

Space.create([
  {name: 'Alanas Closet', location: 'God only knows', description: 'straight chillin', img_link: 'http://2beesinapod.com/wp-content/uploads/2014/03/IMG_4265.jpg', user: User.first},
  {name: 'The Louvrerer', location: 'Mobile, Alabama', description: 'like MOMA for hicks', img_link: 'https://media-cdn.tripadvisor.com/media/photo-s/01/7e/87/d1/mobile-bay-convention.jpg', user: User.last}
  ])


ArtSpace.create([
  {start_date: Date.new(2016,10,05), end_date: Date.new(2016,11,07), art: Art.first, space: Space.last},
  {start_date: Date.new(2016,02,01), end_date: Date.new(2016,03,03), art_id: 2, space: Space.last},
  {start_date: Date.new(2016,05,12), end_date: Date.new(2016,05,18), art_id: 3, space: Space.first} 
  ])





