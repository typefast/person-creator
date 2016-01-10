class Person < ActiveRecord::Base
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :first_name, length: { minimum: 3 }
  validates :last_name, length: { minimum: 3 }
end
