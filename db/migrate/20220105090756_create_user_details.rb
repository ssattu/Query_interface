class CreateUserDetails < ActiveRecord::Migration[7.0]
  def change
    create_table :user_details do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone_no
      t.text :profile_bio
      t.text :address
      t.string :email
      t.string :password
      t.string :alt_phone_no
      t.string :alt_email
      t.string :pan_no
      t.string :aadhar_no
      t.integer :user_type

      t.timestamps
    end
  end
end
