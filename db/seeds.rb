User.create(name: 'Fry')

l = User.create(name: 'Leela')
l = Business.create(name: "Leela's Cleaning", user: l)

z = User.create(name: 'Zoidberg')
zb = Business.create(name: "Zoidberg's Cleaning", user: z)
