class CreateOuroPretoCadastros < ActiveRecord::Migration
  def change
    create_table :ouro_preto_cadastros do |t|
      t.string :nome, limit: 50
      t.string :telefone, limit: 15
      t.string :email, limit: 55
      t.string :aluno, limit: 3
      t.string :curso

      t.timestamps null: false
    end
  end
end
