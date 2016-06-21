# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



User.create([{ name: 'Alana', email: "alana@test.com", password: "password1" }, { name: 'Robin', email: "robin@test.com", password: "password1" }])

Art.create([
  { name: 'Starry Night 2: Star Harder', description: 'Real good stuff, kiddo', img_link: 'http://www.holladay-tusd1.org/wp-content/uploads/header-51.jpg', user: User.first}, 

  ])
Art.create([

  {name: 'General view of the island Neveranger', description: 'by Wolfi', img_link: 'https://upload.wikimedia.org/wikipedia/commons/a/ab/Adolf_W%C3%B6lfli_General_view_of_the_island_Neveranger%2C_1911.jpg', user: User.last},
  {name: 'Experiment on a Bird', description: 'FOR SCIENCE!', img_link: 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/22/An_Experiment_on_a_Bird_in_an_Air_Pump_by_Joseph_Wright_of_Derby%2C_1768.jpg/1280px-An_Experiment_on_a_Bird_in_an_Air_Pump_by_Joseph_Wright_of_Derby%2C_1768.jpg', user: User.last},
  {name: 'Cooking hot food', description: 'A penetrative stare into Alanas soul', img_link: 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/fb/Cooking_hot_food.jpg/1024px-Cooking_hot_food.jpg', user: User.first},
  {name: 'Complex scribble matrix', description: 'A scribble matrixx that is complex, 2014', img_link: 'https://upload.wikimedia.org/wikipedia/commons/9/95/Ignacio_Uriarte%2C_Complex_scribble_matrix%2C_2014.jpg', user: User.first},
  {name: 'Les Bakas', description: 'fafafafafaces', img_link: 'https://upload.wikimedia.org/wikipedia/commons/9/9f/Les_Bakas.jpg', user: User.last},
  {name: 'Damien Hirst <3', description: 'Damien Hirst is the greatest artist to ever live', img_link: 'http://animalnewyork.com/wp-content/uploads/2012/01/damienhirst.jpg', user: User.last},
  {name: 'Dat Bae Do', description: 'Coming soon to a theatre near you', img_link: 'http://i0.wp.com/www.curatormagazine.com/wp-content/uploads/2015/04/Gustav_Klimt_039.jpg', user: User.last},
  {name: 'Ralph Steadmans cans', description: 'BLLLLAAAARRRRGHHHH', img_link: 'http://themicrogiant.com/wp-content/uploads/2014/04/ralph-steadman-1.jpg', user: User.first},
  {name: 'Posies', description: 'I dont know the actual name of this, i made it up.', img_link: 'http://411posters.com/wp-content/uploads/2012/03/ryden-YHWH-Vinyl-Figures.jpg', user: User.first},
  {name: 'Cool Nose Bro', description: 'Whats the deal yo.', img_link: 'http://c300221.r21.cf1.rackcdn.com/rene-magritte-philosophers-lamp-1936-1349125820_b.jpg', user: User.first},
  {name: 'Altamira Bison', description: 'This is pretty old', img_link: 'https://upload.wikimedia.org/wikipedia/commons/c/cc/AltamiraBison.jpg', user: User.last},
  {name: 'Christ 2.0', description: 'New and Improved, coming soon to a theatre near you.', img_link: 'https://marc5solas.files.wordpress.com/2013/11/eccemono.png', user: User.first},
  {name: 'Mandelbrot', description: 'Fractals are cool', img_link: 'https://upload.wikimedia.org/wikipedia/commons/8/89/Mandel_zoom_10_satellite_seehorse_valley.jpg', user: User.first},
  {name: 'Landsowne Portrait', description: 'Who is this?', img_link: 'https://upload.wikimedia.org/wikipedia/commons/c/c4/Gilbert_Stuart_-_George_Washington_-_Google_Art_Project_(6966745).jpg', user: User.last},
  {name: 'Days', description: '2015. carved rubber stamps on paper. 18" x 12" each', img_link: 'http://notfake.website/folio/days.jpg', user: User.first},
  {name: 'Hundertwasser Stuff', description: 'Hunderwasser was a pretty cool guy', img_link: 'http://www.myinterestingfacts.com/wp-content/uploads/2014/02/Friedensreich-Hundertwasser-Pic.jpg', user: User.last},

  { name: 'Razzle Dazzle', description: 'A little Razzle, A LOTTA DAZZLE', img_link: 'http://www.graphicine.com/wp-content/uploads/2014/02/1417729_537468716336813_243128434_o.jpg', user: User.last},
  {name: 'Razzle Dazzle', description: 'A little Razzle, A LOTTA DAZZLE', img_link: 'http://i43.tinypic.com/w6qown.jpg', user: User.last},
  { name: 'SHAMON! HEEHEE!', description: 'Real good stuff, kiddo', img_link: 'http://blogs.uoregon.edu/ttow/files/2014/05/michael-jackson-art-hd-wallpapers-231r1lx.jpg', user: User.first}, 
  { name: 'Friction Fish #4', description: 'Eww', img_link: 'https://upload.wikimedia.org/wikipedia/commons/2/20/Statuette_Mambia_Nig%C3%A9ria.jpg', user: User.first},
  { name: 'Awesome in a box!', description: 'Eww', img_link: 'http://art.ngfiles.com/images/432000/432743_jcarignan443_above-the.jpg', user: User.first},
  { name: 'Damn Commies', description: 'Eww', img_link: 'http://i.imgur.com/a0CC7b5.jpg', user: User.first},
  { name: 'For Alana', description: 'Eww', img_link: 'http://vignette1.wikia.nocookie.net/shrek/images/b/b3/Shrek_2_Movie_Poster.jpg/revision/latest?cb=20120215074336', user: User.first}
  ])

Space.create([
  {name: 'Chichen Itza', location: 'Yucatan, Mexico', description: 'The Best Place', img_link: 'http://vizts.com/wp-content/uploads/2016/04/mayan-chichen-itza.jpg', user: User.last},
  {name: 'Its business time', location: 'You know where', description: 'Be there at 9 for some art', img_link: 'https://s-media-cache-ak0.pinimg.com/564x/96/cb/55/96cb55e25f0fc1f8a7dc81cbb0d723e7.jpg', user: User.last},
  {name: 'Yout future', location: '2 on every block', description: 'It beats starving, and maybe people will notice', img_link: 'http://associationsnow.com/wp-content/uploads/2013/06/0628_starbucks.jpg', user: User.first},
  {name: 'The great beyond', location: 'Mt. Fuji', description: 'So pretty, so phresh', img_link: 'http://www.spoon-tamago.com/wp-content/uploads/2013/05/Fuji-the-great-wave-at-kanagawa-katsushika-hokusai1.jpg', user: User.first},
  {name: 'Real pro status', location: 'Mecca', description: 'Everyone has a shot', img_link: 'http://www.wired.com/wp-content/uploads/2015/09/GettyImages-492573807.jpg', user: User.first},
  {name: 'Alanas Closet', location: 'God only knows', description: 'straight chillin', img_link: 'http://2beesinapod.com/wp-content/uploads/2014/03/IMG_4265.jpg', user: User.first},
  {name: 'The Louvrerer', location: 'Mobile, Alabama', description: 'like MOMA for hicks', img_link: 'https://media-cdn.tripadvisor.com/media/photo-s/01/7e/87/d1/mobile-bay-convention.jpg', user: User.last}
  ])


ArtSpace.create([
  {start_date: Date.new(2016,10,05), end_date: Date.new(2016,11,07), art: Art.first, space: Space.last},
  {start_date: Date.new(2016,02,01), end_date: Date.new(2016,03,03), art_id: 2, space: Space.last},
  {start_date: Date.new(2016,05,12), end_date: Date.new(2016,05,18), art_id: 3, space: Space.first} 
  ])










