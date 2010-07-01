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


  $('input:radio[name=recortable[nombre]]').bind('mousedown',function(){
    
    var identificador = $(this).attr('id');
    var imagen
    switch (identificador) {
    case "recortable_nombre_bolo16" :
      imagen = "/images/bolo16.jpg";
      break;
    case "recortable_nombre_bolo35" :
      imagen = "/images/bolo35.jpg";
      break;
    case "recortable_nombre_bolo70" :
      imagen = "/images/bolo70.jpg";
      break;
    case "recortable_nombre_bolo154" :
      imagen = "/images/bolo154.jpg";
      break;
    case "recortable_nombre_bolo340" :
      imagen = "/images/bolo340.jpg";
      break;
    case "recortable_nombre_cono_r_h" :
      imagen = "/images/cono_r_h.jpg";
      break;
    case "recortable_nombre_cono_r_2h" :
      imagen = "/images/cono_r_2h.jpg";
      break;
    case "recortable_nombre_cono_2r_h" :
      imagen = "/images/cono_2r_h.jpg";
      break;
    case "recortable_nombre_cono_4r_h" :
      imagen = "/images/cono_2r_h.jpg";
      break;
    case "recortable_nombre_esfera20" :
      imagen = "/images/esfera20.jpg";
      break;
    case "recortable_nombre_esfera80" :
      imagen = "/images/esfera80.jpg";
      break;
    case "recortable_nombre_esfera320" :
      imagen = "/images/esfera320.jpg";
      break;
    default :
      imagen = "/images/esfera320.jpg";
    }
    $("#imagen_cabecera").fadeOut(500, function() {
      $('#imagen_cabecera').attr('src',imagen)
      $("#imagen_cabecera").slideDown(500);
    });
  })




});