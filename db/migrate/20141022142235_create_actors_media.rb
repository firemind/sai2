class CreateActorsMedia < ActiveRecord::Migration
  def change
    create_table :actors_watchables, id:false do |t|
      t.integer :watchable_id, null: false
      t.integer :actor_id, null:false

      t.foreign_key :watchables, null: false
      t.foreign_key :actors, null: false
      t.timestamps
    end
  end
end
