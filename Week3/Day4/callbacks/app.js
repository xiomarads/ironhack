"use strict";

var fs = require("fs"); //built into Node
var read = require("read"); //must be installed with npn install read

console.log("");
console.log("START OF PROGRAM")

//-------------------------------------------//

fs.readFile("./movies.txt", "utf8", function (error, contentsOfFile){
	
	console.log("error", error);
	console.log("");
	console.log("contents;", contentsOfFile);

	if (error) {
		console.log("Oh no! There was a file read error.")
	}
	else {
		var moviesArray = contentsOfFile.split("\n");
		console.log(moviesArray); 
	}
});




//---------------------------------------------//
console.log("");
console.log("START OF PROGRAM")

function after5Seconds() {
	console.log("5 seconds");

}

setTimeout(after5Seconds, 5000);

setTimeout(function () {
	console.log("2 seconds are up")
}, 2000);

console.log("");
console.log("END OF PROGRAM");
console.log("");
