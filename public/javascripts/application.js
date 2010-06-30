// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults



$(document).ready(function(){

  $('#colorpicker_recortable_color_fondo').farbtastic('#recortable_color_fondo');
  $('#colorpicker_recortable_color_aristas').farbtastic('#recortable_color_aristas');

  $("#slider").easySlider({
              prevText: '',
              nextText: ''})

//  $("#slider").easySlider()

  $("#pruebas").hover( function() {
    $("#imagen_cabecera").attr("src"), function() {return "images/esfera20.jpg"};
  })

});