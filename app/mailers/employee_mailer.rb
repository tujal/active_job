class EmployeeMailer < ApplicationMailer
    default from: 'emloyeeportal@gmai.com'
    def welcome_email
        @employee = params[:employee]
        mail to: @employee.email , subject: "welcome to the employee portal"
    end
end
