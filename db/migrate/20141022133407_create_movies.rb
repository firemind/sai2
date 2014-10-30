class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.integer :rottentomatoesrating
      t.integer :watchable_id

      t.foreign_key :watchables, null: false
      t.timestamps
    end
  end
end
