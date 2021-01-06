class CreateAppearances < ActiveRecord::Migration[6.1]
  def change
    create_table :appearances do |t|
      t.references :participant, null: false, foreign_key: true
      t.references :title, null: false, foreign_key: true
      t.integer :role

      t.timestamps
    end
  end
end
