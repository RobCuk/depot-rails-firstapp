import React from 'react'
import ReactDOM from 'react-dom'
import PayTypeSelector from 'PayTypeSelector'
//Loads the selector using ReactDOM. 
//Turbolinks makes react load up every time the page gets rerendered.
document.addEventListener('turbolinks:load', function() {       
    var element = document.getElementById("pay-type-component"); 
    ReactDOM.render(<PayTypeSelector />, element);                 
  });

