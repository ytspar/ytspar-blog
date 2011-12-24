// Text highlight. Can be improved with http://samcroft.co.uk/2011/jquery-plugin-for-inline-text-backgrounds.
$(document).ready(function(){
	$('h4').wrapInner('<span>');
});

$(document).ready(function() {
  $('footer').click(function() {
    if ($('p.colophon').is(":hidden"))
    {
      $('p.colophon').slideDown("slow");
      $('html, body').animate({scrollTop: $(document).height()}, 'slow');
    } else {
      $('p.colophon').slideUp("slow");
    }
    return false;
  });
  $('footer a').click(function(event){
      event.stopImmediatePropagation();
  });  

});