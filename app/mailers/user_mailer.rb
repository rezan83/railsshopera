class UserMailer < ApplicationMailer
    default from: 'fakehobo83@gmail.com'
    @me = 'rezan.moh83@gmail.com'
    def contact_form(email, name, message)
        @message = message
        mail(from: email,
        to: @me,
        subject: "A new contact form message from #{name}")
    end
end
