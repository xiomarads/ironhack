//class Animal
//def initialize (name, breed, sound)

class Animal {
	constructor(name, breed, sound){  //instead of initialize on Ruby
		this.name = name;
		this.breed = breed;
		this.sound = sound;
	}

	chase() {
		console.log(`${this.name} is chasing cars`);
	}

	bark() {
		console.log(this.sound);
	}
}

module.exports = Animal;















// NOT VERY IDEAL WAY
// //making a prototype (combination of class and the constructor)

// function Animal(name, breed, sound) {
// 	// @name = name
// 	this.name = name;
// 	this.breed = breed;
// 	this.sound = sound;
// };

// Animal.prototype.chase = function() {
// 	console.log (`${this.name} is chasing cars.`)  //same as chase method on Ruby.
// };
// Animal.prototype.bark = function() {
// 	console.log(this.sound);
// };
// module.exports = Animal;