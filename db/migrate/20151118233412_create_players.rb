class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :username
      t.string :alias
      t.integer :beers

      t.timestamps null: false
    end
  end
end
