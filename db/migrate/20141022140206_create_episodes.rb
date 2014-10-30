class CreateEpisodes < ActiveRecord::Migration
  def change
    create_table :episodes do |t|
      t.integer :season_nr
      t.integer :watchable_id, null:false
      t.integer :serie_id, null:false

      t.foreign_key :watchables, null: false
      t.foreign_key :series, null: false
      t.timestamps
    end
  end
end
