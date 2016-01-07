// http://www.codewars.com/kata/parse-integers-in-array/solutions/javascript/me/best_practice

/**
 * Function converts array of string to array of integers.
 * @param  {Array} of numbers in form of string
 * @return {Array} of integer numbers 
 */
var parseNumbers = function(intStrs) {
  if(intStrs.length === 0) { return []; }
  return intStrs.map(function(element) {
    return parseInt(element);
  });
}
