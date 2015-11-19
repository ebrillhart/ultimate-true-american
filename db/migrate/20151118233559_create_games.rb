class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :title
      t.text :description
      t.integer :no_of_players
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
