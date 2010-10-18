  ActionMailer::Base.smtp_settings =
    {  :address              => "smtp.gmail.com",
       :port                 => 587,
       :domain               => 'sklounge.com',
       :user_name            => 'sklounge@gmail.com',
       :password             => 'sk21ee3r',
       :authentication       => 'plain',
       :enable_starttls_auto => true
        }

