class CreateTitles < ActiveRecord::Migration[6.1]
  def change
    create_table :titles do |t|
      t.string :name
      t.enum :type
      t.references :director, null: false, foreign_key: true
      t.ingeger :release_year
      t.string :rating
      t.integer :duration_in_minutes
      t.integer :duration_seasons
      t.string :description

      t.timestamps
    end
  end
end
