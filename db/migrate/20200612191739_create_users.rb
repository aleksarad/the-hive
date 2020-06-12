class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :user_name
      t.string :password
      t.string :name
      t.string :location

      t.timestamps
    end
  end
end
