class CreateActors < ActiveRecord::Migration
  def change
    create_table :actors do |t|
      t.string :name, null: false
      t.integer :gender, default: 0, null: false, limit: 2
      t.integer :popularity

      t.timestamps
    end
  end
end
