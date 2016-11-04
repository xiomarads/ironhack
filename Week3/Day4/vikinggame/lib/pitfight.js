
class pitFight {
	constructor(viking1, viking2){  
		this.viking1 = viking1;
		this.viking2 = viking2;
	}

	start() {
	
		var vik1Decreasedhealth = this.viking1.health;
		var vik2Decreasedhealth = this.viking2.health;

		while (vik1Decreasedhealth > 5 && vik2Decreasedhealth > 5){
			vik1Decreasedhealth = vik1Decreasedhealth - this.viking2.strength;
			vik2Decreasedhealth = vik2Decreasedhealth - this.viking2.strength;
			console.log(`${this.viking1.name}'s health is ${vik1Decreasedhealth}, and ${this.viking2.name}'s health is ${vik2Decreasedhealth}`);
		}

 			console.log ("");
 			console.log ("you don't have leftover strength bud. Let's have a non-GMO, glutten free, vegan cinammon spiced latte.");

	}
}

module.exports = pitFight;