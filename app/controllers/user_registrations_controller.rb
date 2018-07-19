class UserRegistrationsController < Devise::RegistrationsController
    def create
        super
        @user = resource
        if @user.persisted?
            UserMailer.welcome(@user).deliver_now
        end
    end
end