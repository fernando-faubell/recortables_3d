class Modelo < ActiveRecord::Base

  has_many :recortables
  attr_accessible :nombre


  def self.lista_select
    #TODO: Buscar la forma de traducir los modelos.
    #[[I18n.t(:globo),1]]
    all.map{|k| [k.nombre,k.id]}
  end


end

# == Schema Information
#
# Table name: modelos
#
#  id         :integer(4)      not null, primary key
#  nombre     :string(255)
#  created_at :datetime
#  updated_at :datetime
#

