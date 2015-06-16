window.onload = function () {
  var names = "Pera Peric ;Mika Mikic; Jelena Petrovic ; Zoran Milic ; Čeda Čedić ";
  var output = ["---------- Originalni String\n", names + "\n"];
  var pattern = /\s*;\s*/;
  var imenaList = names.split(pattern);

  pattern = /(\w+)\s+(\w+)/;

  var poPrezimenimaList = [];
  output.push("---------- Nakon razdvajanja uz pomoć regularnih izraza ");
  var i, len;
  for (i = 0, len = imenaList.length; i < len; i++){
    output.push(imenaList[i]);
    poPrezimenimaList[i] = imenaList[i].replace(pattern, "$2, $1");
  }

  output.push("---------- Imena preokrenuta");
  for (i = 0, len = poPrezimenimaList.length; i < len; i++){
    output.push(poPrezimenimaList[i]);
  }

  poPrezimenimaList.sort();
  output.push("---------- Sortirano");
  for (i = 0, len = poPrezimenimaList.length; i < len; i++){
    output.push(poPrezimenimaList[i]);
  }

  output.push("---------- Kraj");
  console.log(output.join("\n"));

  document.getElementById("lel").innerHTML="Check the console.";
}
