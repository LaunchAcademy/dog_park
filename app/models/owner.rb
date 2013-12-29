class Owner < ActiveRecord::Base
  has_many :ownerships
  has_many :dogs, through: :ownerships
  validates_presence_of :first_name
  validates_presence_of :last_name
  validates :email, presence: true, :format => { :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i }
end
