# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
root = exports ? this
$(document).ready(root.changeColor = (@color) ->
  switch @color
     when "#ADD8E6" then $(".formPageBG").attr('style','background-color: #ADD8E6 !important')
     when "#FFB6C1" then $(".formPageBG").attr('style','background-color: #FFB6C1 !important')
     when "#FFFFA5" then $(".formPageBG").attr('style','background-color: #FFFFA5 !important')
     when "#FDFDFD" then $(".formPageBG").attr('style','background-color: #FDFDFD !important')

  switch @color
     when "#ADD8E6" then $(".formButton").attr('style','background-color: #ADD8E6 !important')
     when "#FFB6C1" then $(".formButton").attr('style','background-color: #FFB6C1 !important')
     when "#FFFFA5" then $(".formButton").attr('style','background-color: #FFFFA5 !important')
     when "#FDFDFD" then $(".formButton").attr('style','background-color: #FDFDFD !important')
)
