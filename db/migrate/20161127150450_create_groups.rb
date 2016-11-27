class CreateGroups < ActiveRecord::Migration[5.0]
  def change
    create_table :groups do |t|
      t.integer :gid, null: false
      t.string :groupname, null: false

      t.string :email_domain, null: true

      t.timestamps
    end
  end
end
