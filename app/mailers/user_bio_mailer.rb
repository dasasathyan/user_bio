class UserBioMailer < ApplicationMailer
    def welcome_email(bio)
        @bio = bio
        mail(to: @bio.emailid, subject: 'Your Bio is updated')
      end
end
