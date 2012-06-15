$(document).ready(function() {
  
  // Text highlight. Can be improved with http://samcroft.co.uk/2011/jquery-plugin-for-inline-text-backgrounds.
  $('h4').wrapInner('<span>');
  
  // Stupid footer stuff
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

// Style hashtags
hashtag_regexp = /#([a-zA-Z0-9]+)/g;

function linkHashtags(text) {
    return text.replace(
        hashtag_regexp,
        '<span class="hashtag">#$1</span>'
    );
}

$(document).ready(function(){
    $('p, li').each(function() {
        $(this).html(linkHashtags($(this).html()));
    });
});