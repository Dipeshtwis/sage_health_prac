class CreatePersons < ActiveRecord::Migration[7.1]
  def change
    create_table :persons do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :suffix
      t.string :preferred_name
      t.date :dob
      t.string :gender
      t.string :ssn
      t.string :home_address_street
      t.string :home_address_city
      t.string :home_address_state
      t.string :home_address_zip
      t.string :home_address_comment
      t.string :mailing_address_street
      t.string :mailing_address_city
      t.string :mailing_address_state
      t.string :mailing_address_zip
      t.string :mailing_address_comment
      t.string :email
      t.string :email_comment

      t.timestamps
    end

    add_index :persons, :id, unique: true
  end
end
