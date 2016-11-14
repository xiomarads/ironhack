# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
concertA = Concert.create!(artist: 'John Prine', venue: 'The Garden Cafe', city: 'Granada', date: Date.today, price: 40, description: 'If I wanted to be a poet, I’d write poetry. I know what poetry is. I’m not writing poetry, I’m writing song lyrics.')
concertB = Concert.create!(artist: 'Perrozompopo', venue: 'The Garden Cafe', city: 'Granada', date: Date.today + 1.day, price: 30, description: "Cuando tardas y demoras en volver")
concertC = Concert.create!(artist: 'Mafia Funk', venue: 'Re', city: 'Managua', date: Date.today + 2.days, price: 10, description: 'Kervin Rodriguez on the Sax, Matute killing it on drums')
concertE = Concert.create!(artist: 'Cuneta Son Machin', venue: 'Olla de Barro', city: 'Leon', date: Date.today + 3.days, price: 30, description: 'Cuneteando con el Son Nica')
concertF = Concert.create!(artist: 'Clara Grun', venue: 'Tres Mundos', city: 'Granada', date: Date.today + 5.days, price: 25, description: 'Clara Grun & her piano')
concertG = Concert.create!(artist: 'Moises Gadea', venue: 'Parque Central', city: 'Leon', date: Date.today + 9.days, price: 30, description: 'Lanzamiento Tortilla va a querer?')
concertH = Concert.create!(artist: 'Norma Elena', venue: 'Ruben Dario', city: 'Managua', date: Date.today, price: 60, description: 'Mujer de carne y hueso, lanzamiento')
concertI = Concert.create!(artist: 'Camerata Bach', venue: 'Parque Central', city: 'San Juan del Sur', date: Date.today + 7.days, price: 0, description: 'Villancicos')

concertA.comments.create!(author: 'CK', comment: 'This is going to be awesome. Will be there for sure.)
