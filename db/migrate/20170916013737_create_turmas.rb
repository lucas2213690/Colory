class CreateTurmas < ActiveRecord::Migration[5.1]
  def change
    create_table :turmas do |t|
      t.string :faculdade
      t.string :curso
      t.string :cidade

      t.timestamps
    end
  end
end
