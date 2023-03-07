class AddAdminToDentistum < ActiveRecord::Migration[7.0]
  def change
    add_reference :dentista, :admin, null: false, foreign_key: true
  end
end
