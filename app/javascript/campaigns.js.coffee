# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  $('#pics').imagesLoaded ->
    $('#pics').masonry
      itemSelector: '.box'
      isFitWidth: true


# $(function(){
#   $('#masonry-container').masonry({
#     itemSelector: '.box',
#     columnWidth: 200,
#     isAnimated: !Modernizr.csstransitions,
#     isFitWidth: true
#   });

# });
