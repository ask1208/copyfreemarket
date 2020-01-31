class DeviseCreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :nickname, null: false, default: ''
      t.string :firstname, null: false, default: ''
      t.string :lastname, null: false, default: ''
      t.date   :birthday, null: false
      ## Database authenticatable
      t.string :email,              null: false, default: ""
      t.string :encrypted_password, null: false, default: ""

      ## Recoverable
      t.string   :reset_password_token
    end
end
