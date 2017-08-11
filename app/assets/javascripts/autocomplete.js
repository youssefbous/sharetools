
$(document).ready(function() {
  var address = document.getElementById("tool_address");
  if (address) {
    new google.maps.places.Autocomplete(address, { types: ['geocode'] });
  }
});
