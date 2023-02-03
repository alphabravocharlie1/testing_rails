class Like < ActiveRecord::Base
  belongs_to :announcement
  belongs_to :likeable, polymorphic: true
end
