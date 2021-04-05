class CreateTheloais < ActiveRecord::Migration[6.1]
  def change
    create_table :theloais do |t|
      t.string :ma_theloai
      t.string :ten_theloai

      t.timestamps
    end
  end
end
