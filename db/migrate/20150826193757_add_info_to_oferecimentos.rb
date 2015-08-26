class AddInfoToOferecimentos < ActiveRecord::Migration
  def change
    add_column :oferecimentos, :semestre, :string
    add_column :oferecimentos, :turma, :string
    add_column :oferecimentos, :presenca, :string
  end
end
