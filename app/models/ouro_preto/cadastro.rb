class OuroPreto::Cadastro < ActiveRecord::Base
    validates :nome, presence: true
    validates :telefone, presence: true
    validates :email, presence: true
end
