class User < ApplicationRecord
  has_secure_password

  has_many :user_languages, dependent: :destroy
  has_many :languages, through: :user_languages
  has_many :my_requests, foreign_key: :requester_id, class_name: "Meetup"
  has_many :acceptors, through: :my_requests
  has_many :my_accepted_meetups, foreign_key: :acceptor_id, class_name: "Meetup"
  has_many :requesters, through: :my_accepted_meetups

  validates :email, uniqueness: true
  validate :validate_age

  def meetups
    # find all the meetups where I am either a acceptor or a requester
    self.acceptors.concat(self.requesters)
    #put together 2 arrays
  end

  def validate_age
    if age < 18
      errors.add(:age, "You should be over 18 years old.")
    end
  end
end
