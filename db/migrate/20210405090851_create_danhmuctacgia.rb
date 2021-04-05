class CreateDanhmuctacgia < ActiveRecord::Migration[6.1]
  def change
    create_table :danhmuctacgia do |t|
      t.string :mtg
      t.string :ten_tacgia
      t.string :website
      t.string :ghichu

      t.timestamps
    end
  end
end
