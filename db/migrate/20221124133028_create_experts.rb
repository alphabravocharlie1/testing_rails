class CreateExperts < ActiveRecord::Migration
  def change
    create_table :experts do |t|
      t.string :name
      t.string :gender
      t.string :salary
      t.string :type

      t.timestamps null: false
    end
  end
end
