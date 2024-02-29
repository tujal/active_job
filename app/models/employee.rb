class Employee < ApplicationRecord
    has_one_attached :profile_image
    validates :name, :joining_date, :email, :company_name, :position, presence: true
end
