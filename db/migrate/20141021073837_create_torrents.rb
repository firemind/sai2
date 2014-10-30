class CreateTorrents < ActiveRecord::Migration
  def change
    create_table :torrents do |t|
      t.string :enclosure_url, null: false, unique: true
      t.integer :files, null: false, default: 1
      t.integer :job_id
      t.string :name, null: false
      t.datetime :pub_date
      t.integer :rating
      t.string :size
      t.integer :watchable_id
      t.foreign_key :watchables, null: false

      t.timestamps
    end
  end
end
