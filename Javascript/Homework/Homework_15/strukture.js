// Person
var Person = function (firstName, lastName) {
  this.firstName = firstName;
  this.lastName = lastName;
  console.log('Person ' + firstName + ' ' + lastName + ' instantiated.');
}

Person.prototype.sayHello = function() {
  console.log("Hello I'm " + this.firstName);
};

// Engineer
var Engineer = function(firstName, lastName, proffession) {
  Person.call(this, firstName, lastName);
  this.proffession = proffession;
}

Engineer.prototype = Object.create(Person.prototype);
Engineer.prototype.constructor = Engineer;

Engineer.prototype.sayHello = function () {
  console.log("Hello I'm " + this.firstName + " and I'm an Engineer of " + this.proffession);
};

Engineer.prototype.work = function () {
  console.log(this.firstName + " is working.");
};

// Instances
var person1 = new Person('Stefan', 'Mojsilovic');
var person2 = new Person('Nikola', 'Stojiljkovic');

console.log('Person 1 is: ' + person1.firstName + ' ' + person1.lastName);
console.log('Person 2 is: ' + person2.firstName + ' ' + person2.lastName);
person1.sayHello();
person2.sayHello();

var engineer1 = new Engineer('Stefan', 'Mojsilovic', 'Networking and Operative Systems');
var engineer2 = new Engineer('Nikola', 'Stojiljkovic', 'Computer Science');
engineer1.sayHello();
engineer2.sayHello();

engineer1.work();
engineer2.work();
