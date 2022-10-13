class AddRefUserIdTo < ActiveRecord::Migration
  def change
    add_reference :companies, :user 
  end
end
