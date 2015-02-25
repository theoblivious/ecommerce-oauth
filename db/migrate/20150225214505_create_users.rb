class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.boolean :idmeid
      t.string :affiliation
      t.boolean :verified

      t.timestamps null: false
    end
  end
end
