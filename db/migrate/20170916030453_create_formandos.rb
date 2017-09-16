class CreateFormandos < ActiveRecord::Migration[5.1]
  def change
    create_table :formandos do |t|
      t.integer :cpf
      t.integer :rg
      t.date :nascimento
      t.string :email
      t.integer :tel
      t.string :endereco
      t.string :bairro
      t.string :cidade
      t.string :estado
      t.integer :cep

      t.timestamps
    end
  end
end
