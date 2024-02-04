class CreatePhoneNumbers < ActiveRecord::Migration[7.1]
  def change
    create_table :phone_numbers do |t|
      t.string :number, null: false
      t.string :phone_type
      t.string :language
      t.string :comment
      t.boolean :used_in_app
      t.references :people, null: false, foreign_key: true

      t.timestamps
    end
  end
end
