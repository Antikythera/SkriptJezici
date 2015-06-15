function getFirstRow() {
  table = document.getElementById("tabela");
  cells = table.rows[1].cells;
  printOut = "";
  for( i=0; i<table.rows.length; i++) {
    printOut += cells[i].innerHTML + " ";
  }
  alert(printOut);
}
