class CreateWatchables < ActiveRecord::Migration
  def change
    create_table :watchables do |t|
      t.boolean :dl_finished, null: false, default: false
      t.date :firstaired
      t.string :name, null: false
      t.boolean :watched, null: false, default: false
      t.integer :length

      t.timestamps
    end
  end
end
