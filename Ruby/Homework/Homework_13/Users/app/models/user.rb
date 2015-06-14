class User < ActiveRecord::Base
  validates :username, presence: true,
                       length: { minimum: 3 }
  validates :age, :numericality => { :greater_than_or_equal_to => 0 }
end
