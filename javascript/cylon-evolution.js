// http://www.codewars.com/kata/cylon-evolution/solutions/javascript/me/best_practice

function Cylon(model){
  this.model = model;  
}

Cylon.prototype.attack = function() {
  return 'Destroy all humans!';
}

var HumanSkin = Cylon;

HumanSkin.prototype = new Cylon;

HumanSkin.prototype.infiltrate = function() {
  return 'Infiltrate the colonies';
}
