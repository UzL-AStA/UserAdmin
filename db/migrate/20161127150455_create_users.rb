class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.integer :uid, null: false
      t.string :username, null: false

      t.string :first_name, null: false
      t.string :last_name, null: false

      t.belongs_to :primary_group, class_name: 'Group', index: true, foreign_key: true

      t.timestamps
    end

    create_join_table :users, :groups
  end
end
