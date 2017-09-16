class Formando < ApplicationRecord
	validates_presence_of :cpf, message: "Deve ser preenchido"
	validates_presence_of :rg, message: "Deve ser preenchido"
	validates_presence_of :nascimento, message: "Deve ser preenchido"
	validates_presence_of :email, message: "Deve ser preenchido"
	validates_presence_of :tel, message: "Deve ser preenchido"
	validates_presence_of :endereco, message: "Deve ser preenchido"
	validates_presence_of :bairro, message: "Deve ser preenchido"
	validates_presence_of :cidade, message: "Deve ser preenchido"
	validates_presence_of :estado, message: "Deve ser preenchido"
	validates_presence_of :cep, message: "Deve ser preenchido"
	belongs_to :turma
end
