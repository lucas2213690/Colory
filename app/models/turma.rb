class Turma < ApplicationRecord
	validates_presence_of :faculdade, message: "Deve ser preenchido"
	validates_presence_of :curso, message: "Deve ser preenchido"
	validates_presence_of :cidade, message: "Deve ser preenchido"
	has_many :formando
end
