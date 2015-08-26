class CreateDisciplinas < ActiveRecord::Migration
  def change
    create_table :disciplinas do |t|
      t.string :codigo
      t.string :nome

      t.timestamps null: false
    end
  end
end
