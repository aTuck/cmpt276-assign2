# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
root = exports ? this
root.changeColor = (@color) ->
  switch @color
     when "#ADD8E6" then $(".formPageBG").css({"background-color":"#ADD8E6"})
     when "#FFB6C1" then $(".formPageBG").css({"background-color":"#FFB6C1"})
     when "#FFFFA5" then $(".formPageBG").css({"background-color":"#FFFFA5"})
     when "#FDFDFD" then $(".formPageBG").css({"background-color":"#FDFDFD"})
