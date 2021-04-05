class CreateDanhmucsaches < ActiveRecord::Migration[6.1]
  def change
    create_table :danhmucsaches do |t|
      t.string :ma_sach
      t.string :ten_sach
      t.string :mtg
      t.string :mtl
      t.string :maNXB
      t.integer :nxb

      t.timestamps
    end
  end
end
