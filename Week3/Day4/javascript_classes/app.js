
"use strict";

var Animal = require("./lib/animal.js");

console.log("");

var thunder = new Animal("Thunder", "German Shepherd", "Woof?");
thunder.chase();
thunder.bark();

console.log("");

var bear = new Animal("Bear", "Border Collie", "Uoooah");
bear.chase();
bear.bark();




// NOT IDEAL AT ALL WAY
// var thunder = {
// 	name: "Thunder",
// 	breed: "German Shepherd",
// 	sound: "Woof?",

// 	chase: function() {
// 		console.log(`${this.name} is chasing cars.`);
// 	},

// 		bark: function () {
// 			console.log(this.sound);
// 		}
// };

// thunder.chase();
// thunder.bark();

// console.log("");

// var bear = {
// 	name: "Bear",
// 	breed: "Border Collie",
// 	sound: "Uooah",
// }

// 	chase:function() {
// 	console.log(`${this.name} is chasing cars.`);

// };
// 		bark:function() {
// 		console.log(this.sound);
// 	}
// };

// bear.chase();
// bear.bark();
