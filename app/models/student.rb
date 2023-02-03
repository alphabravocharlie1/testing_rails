class Student < ActiveRecord::Base
  has_many :likes, as: :likeable
end
