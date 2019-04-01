class CreateProdutos < ActiveRecord::Migration[5.2]
  def change
    create_table :produtos do |t|
      t.string :nome
      t.string :departamento
      t.string :equipamento
      t.text :descricao
      t.datetime :data

      t.timestamps
    end
  end
end
