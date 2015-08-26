class CreateOferecimentos < ActiveRecord::Migration
  def change
    create_table :oferecimentos do |t|

      t.belongs_to :professor
      t.belongs_to :disciplina
      t.timestamps null: false
    end
  end
end
