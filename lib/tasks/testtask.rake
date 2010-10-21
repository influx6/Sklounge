desc "Master Account Task"

task :create_master => :environment do
   system("rake db:migrate")
   if User.create(:login => 'sklounge', :email => 'sklounge@gmail.com', :password => 'master', :password_confirmation => 'master')
   puts "SuccessFully created Master Account"
 else
   puts "Failure in Creating Master Account"
 end
end

