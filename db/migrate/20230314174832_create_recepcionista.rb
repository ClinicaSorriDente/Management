class CreateRecepcionista < ActiveRecord::Migration[7.0]
  def change
    create_table :recepcionista do |t|
      t.string :nome
      t.string :credencial
      t.string :cpf
      t.string :telefone
      t.string :email

      t.timestamps
    end
  end
end
