class Person < ActiveRecord::Base
  validate :first_name, presence: true
  validate :last_name, presence: true
end
