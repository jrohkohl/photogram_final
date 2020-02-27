class Photo < ApplicationRecord
  # Direct associations

  has_many   :likes,
             :dependent => :destroy

  has_many   :comments,
             :dependent => :destroy

  belongs_to :poster,
             :class_name => "User",
             :foreign_key => "owner_id"

  # Indirect associations

  has_many   :fans,
             :through => :likes,
             :source => :fan

  # Validations

end
