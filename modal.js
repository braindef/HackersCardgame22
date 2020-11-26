
function openModal(myModal)
{
  // Get the modal
  var modal = document.getElementById(myModal);
  //var modal = document.getElementById('myModal');

  // Get the button that opens the modal
  var btn = document.getElementById("myBtn");

  // Get the <span> element that closes the modal
  var span = document.getElementsByClassName("close")

  // When the user clicks the button, open the modal 
//  btn.onclick = function() {
//      modal.style.display = "block";
//  }

  modal.style.display = "block";

  for(var i=0; i<span.length; i++)
  // When the user clicks on <span> (x), close the modal
    span[i].onclick = function() {
  //    modal.style.display = "none";
      closeModal(myModal)
    }

  // When the user clicks anywhere outside of the modal, close it
  window.onclick = function(event) {
    if (event.target == modal) {
//      modal.style.display = "none";
    closeModal(myModal)
    }
  }
}

function closeModal(myModal)
{
  var modal = document.getElementById(myModal);
console.log("none");
  modal.style.display = "none";
}


window.onkeyup = function(e) {
  var key = e.keyCode ? e.keyCode : e.which;

  if (key == 27) {
    //closeModal("checkmate");
    //closeModal("check");
    //closeModal("illegal");
    //closeModal("select");
    closeModal("warning");
  }
}
