var open= false;
var lastType= "null";
window.addEventListener('message', function(event) {
  if (event.data.type == "open") {
    lastType = event.data.useType;
      document.getElementById("header").innerHTML = event.data.header;
      document.getElementById("text").innerHTML = event.data.text.toUpperCase();
      if(!open){
        open=true
        $('#container').animate({    
            opacity: 1,
            marginLeft: "+=15%",
        }, 250)
      }
  } else if (event.data.type == "close") {
    if(open && useType == lastType || "null"){
        open=false
        $('#container').animate({    
            opacity: 0,
            marginLeft: "-=15%",
        }, 250)
    }
  }
  else {
      $("#container").hide()
  }
});

$('#container').animate({    
    opacity: 0,
    marginLeft: "-=15%",
}, 250)

