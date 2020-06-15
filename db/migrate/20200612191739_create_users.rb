class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :user_name
      t.string :password_digest
      t.string :name
      t.string :location
      t.string :bio

      t.timestamps
    end
  end
end
