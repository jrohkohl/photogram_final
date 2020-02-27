class Comment < ApplicationRecord
  # Direct associations

  belongs_to :photo

  belongs_to :owner,
             :class_name => "User",
             :foreign_key => "author_id"

  # Indirect associations

  # Validations

end
