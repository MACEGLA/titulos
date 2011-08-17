class Categoria < ActiveRecord::Base
  has_many :titulos

  def to_s
    nombre
  end

end
