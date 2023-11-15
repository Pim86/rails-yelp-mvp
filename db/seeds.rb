puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
Restaurant.create(name: 'Dishoom', address: '7 Boundary St, London E2 7JE', category: 'chinese')
Restaurant.create(name: 'Pizza East', address: '56A Shoreditch High St, London E1 6PQ', category: 'italian')
Restaurant.create(name: 'sushihome', address: '7 Boundary St, London E2 7JE', category: 'belgian')
Restaurant.create(name: 'telepizza', address: '7 Boundary St, London E2 7JE', category: 'italian')
Restaurant.create(name: 'meatparadise', address: '7 Boundary St, London E2 7JE', category: 'french')

puts 'Finished!'
