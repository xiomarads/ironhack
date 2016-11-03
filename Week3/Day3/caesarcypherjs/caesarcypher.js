function caesarCipher (message) {
	var encrypted = caesarCipher("brutus");
	var ciphertext = "";
for(var i = 0; i < message.length; i ++) {
	var messageCharacter = message.charCodeAt(i);
	if(messageCharacter >= 97 && messageCharacter <= 122) {
		ciphertext += String.fromCharCode((plainCharacter - 97 + -3) % 26 + 97);
		} else if (messageCharacter >= 65 && messageCharacter <= 90) {
			ciphertext += String.fromCharCode((messageCharacter - 65 + shiftAmount) % 26 + 65);
		} else {
			ciphertext += String.fromCharCode((messageCharacter);		
		}
}
	return ciphertext;
}

console.log(encrypted);
//=> "_orqrp"


  // var numberShift = -3;
  // var encrypted = caesarCipher("brutus");
  // encryptingWord = encrypted.split ("");
  // encrypting_letters = [ ];




// Write a function that receives a message 
// and returns the encrypted version of that message.

//var encrypted = caesarCipher("brutus");




