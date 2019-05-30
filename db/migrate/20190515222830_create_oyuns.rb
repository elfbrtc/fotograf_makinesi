class CreateOyuns < ActiveRecord::Migration[5.2]
  def change
    create_table :oyuns do |t|
      t.string :isim
      t.text :aciklama
      t.timestamps
    end
  end
end
