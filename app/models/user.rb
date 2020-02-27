class User < ApplicationRecord
  # Direct associations

  has_many   :sent_follow_requests,
             :class_name => "FollowRequest",
             :foreign_key => "sender_id",
             :dependent => :destroy

  has_many   :recieved_follow_requests,
             :class_name => "FollowRequest",
             :foreign_key => "recipient_id",
             :dependent => :destroy

  has_many   :likes,
             :foreign_key => "fan_id",
             :dependent => :destroy

  has_many   :own_photos,
             :class_name => "Photo",
             :foreign_key => "owner_id",
             :dependent => :destroy

  has_many   :comments,
             :foreign_key => "author_id",
             :dependent => :destroy

  # Indirect associations

  has_many   :liked_photos,
             :through => :likes,
             :source => :photo

  # Validations

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
