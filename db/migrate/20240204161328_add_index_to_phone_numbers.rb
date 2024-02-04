class AddIndexToPhoneNumbers < ActiveRecord::Migration[7.1]
  def change
    add_index :phone_numbers, :id, unique: true
  end
end
