class Modelo < ActiveRecord::Base

  has_many :recortables
  attr_accessible :nombre

  validates_presence_of :nombre
  validates_uniqueness_of :nombre

  def self.lista_select
    #TODO: Buscar la forma de traducir los modelos.
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

