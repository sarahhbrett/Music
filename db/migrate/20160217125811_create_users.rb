class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.date :dob
      t.string :gender
      t.text :password_digest

      t.timestamps
    end
  end
end
