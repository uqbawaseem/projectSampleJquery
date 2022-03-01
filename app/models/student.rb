class Student < ApplicationRecord
    validates :name, :age, :status, :email, :password_digest, presence: true
end
