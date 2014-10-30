class CreateSeries < ActiveRecord::Migration
  def change
    create_table :series do |t|
      t.string :name, null: false
      t.string :language, default: "english"

      t.timestamps
    end
  end
end
