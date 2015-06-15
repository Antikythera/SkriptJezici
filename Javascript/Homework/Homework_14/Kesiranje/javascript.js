function daLiJeProstBroj( broj ) {
  if ( daLiJeProstBroj.cache[ broj ] != null ) {
    return daLiJeProstBroj.cache[ broj ];
  } else {
    var prostBroj = broj != 1; // svaki broj izuzev 1 može biti prost
    for ( var i = 2; i < broj; i++ ) {
      if ( broj % i == 0 ) {
        prostBroj = false;
        break;
      }
    }

    daLiJeProstBroj.cache[ broj ] = prostBroj;

    return prostBroj;
  }
}
daLiJeProstBroj.cache = {}

function checkBroj() {
  var broj = parseInt(document.getElementById("broj").value);
  console.log(broj);

  var prostBroj = daLiJeProstBroj(broj);
  if (prostBroj) {
    alert("Broj " + broj + " je prost.");
  } else {
    alert("Broj " + broj + " nije prost.");
  }
}

// Firefox assert
function pokreniTestove() {
  console.log("Testiram da li je 112 prost:");
  console.assert( daLiJeProstBroj(112), "112 nije prost broj." );
  console.log("Testiram da li je 112 u kesu:");
  console.assert( daLiJeProstBroj.cache[112], "112 je kesiran." );
}
