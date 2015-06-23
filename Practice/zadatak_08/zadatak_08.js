// Objasniti sta radi sledeca JavaScript funkcija ukoliko se
// pozove sa argumentom {a: 1, b: 2, c: 3} i koji je njen
// rezultat

function foo(obj) {
  var result = [];
  for(var name in obj) {
    result.push([name, obj[name]]);
  }
  return result;
}

window.onload = function() {
  console.log("Start:");
  console.log(foo({a: 1, b: 2, c: 3}));
}
