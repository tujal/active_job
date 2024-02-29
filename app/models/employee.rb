class Employee < ApplicationRecord
    has_one_attached :profile_image
    validates :name, :joining_date, :email, :company_name, :position, presence: true
    validate :check_image_type

    private
    def check_image_type
        if profile_image.attached?
            if profile_image.content_type == "application/pdf"
                errors.add(:profile_image , "Plz upload jpeg, png images ")
            end
        else
            errors.add(:profile_image, "Image can't be blank")
        end
    end

end
