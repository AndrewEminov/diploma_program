class User < ApplicationRecord
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  MIN_PASSWORD_LENGTH = 7

  has_many :messages

  has_many :microposts, dependent: :destroy
  has_many :active_relationships, class_name:  "Relationship",
           foreign_key: "follower_id",
           dependent:   :destroy
  has_many :passive_relationships, class_name:  "Relationship",
           foreign_key: "followed_id",
           dependent:   :destroy
  has_many :following, through: :active_relationships, source: :followed
  has_many :followers, through: :passive_relationships, source: :follower

  belongs_to :group, optional: true
  belongs_to :role,
             :class_name => :UserRole,
             :foreign_key => :user_role_id,
             optional: true

  has_secure_password

  validates :first_name,
            presence: true
  validates :middle_name,
            presence: true
  validates :last_name,
            presence: true
  validates :email,
            presence: true,
            uniqueness: true,
            format: {with: VALID_EMAIL_REGEX}
  validates :password,
            if: ->(user) {user.id.nil?},
            presence: true,
            confirmation: true,
            length: {minimum: MIN_PASSWORD_LENGTH}

  def feed
    #Micropost.where("user_id = ?", id)
    Micropost.where("user_id IN (:following_ids) OR user_id = :user_id",
                    following_ids: following_ids, user_id: id)
  end

  # Follows a user.
  def follow(other_user)
    following << other_user
  end

  # Unfollows a user.
  def unfollow(other_user)
    following.delete(other_user)
  end

  # Returns true if the current user is following the other user.
  def following?(other_user)
    following.include?(other_user)
  end

  def name
    "#{first_name} #{middle_name[0]}. #{last_name}"
  end

  def is_admin?
    role.code == 'admin'
  end

  def is_professor?
    role.code == 'professor'
  end
end
