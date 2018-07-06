class UserMailer < ApplicationMailer
    default from: 'fakehobo83@gmail.com'
    def contact_form(email, name, message)
        @message = message
        mail(from: email,
        to: 'rezan.moh83@gmail.com',
        subject: "A new contact form message from #{name}")
    end
end
