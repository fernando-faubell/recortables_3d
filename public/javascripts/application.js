$(document).ready(function(){

  $('#colorpicker_recortable_color_fondo').addClass("invisible");
  $('#colorpicker_recortable_color_aristas').addClass("invisible");

  $('#recortable_color_fondo').click( function() {
    $('#colorpicker_recortable_color_fondo').toggleClass("invisible");
  });

  $('#recortable_color_aristas').click( function() {
    $('#colorpicker_recortable_color_aristas').toggleClass("invisible");
  });

  $('#colorpicker_recortable_color_fondo').farbtastic('#recortable_color_fondo');
  $('#colorpicker_recortable_color_aristas').farbtastic('#recortable_color_aristas');





  $("#slider_imagenes").easySlider({
              prevId: 'prevBtn_imagenes',
              prevText: '',
              nextId: 'nextBtn_imagenes',
              nextText: '',
              orientation: 'horizontal'})

  $("#slider_formulario").easySlider({
              prevId: 'prevBtn_formulario',
              prevText: '',
              nextId: 'nextBtn_formulario',
              nextText: '',
              orientation: 'horizontal'})


//  $("#pruebas").hover( function() {
//    $("#imagen_cabecera").attr("src"), function() {return "images/esfera20.jpg"};
//  })

  $('input:radio[name^="recortable[nombre]"]').click(function(){
    identificador = $(this).attr('id');
    imagen = "/images/" + identificador.replace("recortable_nombre_","") + ".jpg" ;
    // Controlar si la imagen existe.
    $("#imagen_cabecera").effect("blind", function(){
      $('#imagen_cabecera').attr('src',imagen);
      $("#imagen_cabecera").effect("slide");
    });
  })




});
