class Recortable < ActiveRecord::Base
  attr_accessible :numero_gajos, :numero_u, :numero_v, :textura, :ancho_textura_x, :ancho_textura_y, :desplazamiento_textura_x, :desplazamiento_textura_y, :rojo, :verde, :azul, :repite_horizontal, :repite_vertical, :malla_rojo, :malla_verde, :malla_azul, :malla_tamanyo, :fin
end
