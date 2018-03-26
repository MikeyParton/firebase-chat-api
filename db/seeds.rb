fry = User.create(
  name: 'Fry',
  avatar: 'https://i.ytimg.com/vi/OGAu_DeKckI/hqdefault.jpg'
)

# Leela
leela = User.create(
  name: 'Leela',
  avatar: 'https://vignette.wikia.nocookie.net/es.futurama/images/d/d4/Turanga_Leela.png/revision/latest?cb=20100725211224'
)

leela_business = Business.create(
  name: "Leela's Cleaning",
  user: leela
)

leela_booking = Booking.create(
  name: 'Cleaning Job',
  user: fry,
  business: leela_business
)

# Zoidberg
zoidberg = User.create(
  name: 'Zoidberg',
  avatar: 'https://uproxx.files.wordpress.com/2014/10/zoidberg.jpg?quality=95&w=600'
)

zoidberg_business = Business.create(
  name: "Zoidberg's Plumbing",
  user: zoidberg
)

zoidberg_booking = Booking.create(
  name: 'Plumbing Job',
  user: fry,
  business: zoidberg_business
)
