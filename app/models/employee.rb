class Employee < ApplicationRecord
    has_one_attached :profile_image
    # after_create :send_welcome_email

    # private
    #  def send_welcome_email
    #     WelcomeEmailJob.perform_now(self)
    #  end
end
