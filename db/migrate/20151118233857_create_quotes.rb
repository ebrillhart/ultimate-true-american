class CreateQuotes < ActiveRecord::Migration
  def change
    create_table :quotes do |t|
      t.string :first_half
      t.string :second_half

      t.timestamps null: false
    end
  end
end
