class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.string :content
      t.integer :announcement_id
      t.integer :likeable_id
      t.string :likeable_type

      t.timestamps null: false
    end
  end
end
