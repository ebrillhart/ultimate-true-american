class CreateCommonalities < ActiveRecord::Migration
  def change
    create_table :commonalities do |t|
      t.string :person1
      t.string :person2
      t.string :commonality

      t.timestamps null: false
    end
  end
end
