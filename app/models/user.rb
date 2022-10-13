class User < ActiveRecord::Base
  has_many :companies 
  update_index('users#user') { self }
  enum status: { unconfirmed: 0, confirmed: 1 }
end
