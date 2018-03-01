class CreateApp < ActiveRecord::Migration[5.1]
  def up
    create_table :apps do |t|
      t.string :name
      t.string :guid, nil: false
      t.integer :memory
      t.integer :disk_quota
      t.integer :instances
    end
  end

  def down
    drop_table :apps
  end
end

