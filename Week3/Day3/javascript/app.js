// countries = ["Puerto Rico", "USA", "Nicaragua", "France", "Zimbabwe", "Mongolia", "Argentina", "Cuba", "Nigeria", "Haiti"]
var countries = ["Puerto Rico", "USA", "Nicaragua", "France", "Zimbabwe", "Mongolia", "Argentina", "Cuba", "Nigeria", "Haiti"];
// countries.each do |a_country|
//countries.each do |a_country|
//   puts " "
//   puts "Countries represetned in this room:"
console.log("");
console.log("Countries represented in this room:");
console.log("-----------------------------------");
//
// countries.each do |a_country|
//   puts "Some of us are from #{a_country}!!"
// puts ""
countries.forEach(function (aCountry) {
console.log("Some of us are from " + aCountry + "!!");
console.log(`Some of us are from ${aCountry}!!`);
});


console.log ("")
// end
// end

//creates a new string of uppercased countries

var uppercaseCountries = countries.map(function (aCountry){
  return aCountry.toUpperCase(); //must have paratheses to invoke method, unlike Ruby.
});
uppercaseCountries.forEach(function (aCountry){
  console.log(`Some of us are from ${aCountry}!!`);
});
// uppercase_countries = countries.map do |a_country|
//   a_country.upcase
// end
// puts "COUNTRIES REPRESENTED IN THIS ROOM"
// puts "----------------------------------"
// uppercase_countries.each do |a_country|
//   puts "Some of us are from #{a_country}!!"
// end
