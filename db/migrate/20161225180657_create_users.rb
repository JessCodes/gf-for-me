class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :first_name,         null: false, default: ""
      t.string :last_name
      t.string :username,           null: false, default: ""
      t.string :email,              null: false, default: ""
      # t.string :encrypted_password, null: false, default: ""

      t.timestamps
    end
  end
end
