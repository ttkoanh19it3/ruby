class CreateNhaxuatbans < ActiveRecord::Migration[6.1]
  def change
    create_table :nhaxuatbans do |t|
      t.string :maNXB
      t.string :ten_NXB
      t.string :diachi
      t.string :email
      t.string :thongtin

      t.timestamps
    end
  end
end
