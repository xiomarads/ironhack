
class car {
	constructor(model, noise){  //instead of initialize on Ruby
		this.model = model;
		this.noise = noise;
		this.wheels = 4;
	}

	carnoise() {
		console.log(`${this.model} sounds like ${this.noise}`);
	}
}

module.exports = car;