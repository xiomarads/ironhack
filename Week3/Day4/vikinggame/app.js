"use strict";

var viking = require("./lib/viking.js");
var pitFight = require("./lib/pitfight.js");

console.log("");

var bjork = new viking("Bjork", 50, 5);
var magnus = new viking("Magnus", 35, 5);

var pitfight1 = new pitFight(bjork, magnus);
pitfight1.start();


// console.log("");


// 	console.log(Welcome to Kjorseyrr, my friend. You are in a little town in the west of Asgard.);
// }