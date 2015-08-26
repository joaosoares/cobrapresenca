class Disciplina < ActiveRecord::Base
  has_many :oferecimentos
  has_many :professores, :through => :oferecimentos
end
