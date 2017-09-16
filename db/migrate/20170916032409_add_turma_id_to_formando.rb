class AddTurmaIdToFormando < ActiveRecord::Migration[5.1]
  def change
    add_column :formandos, :turma_id, :integer
  end
end
