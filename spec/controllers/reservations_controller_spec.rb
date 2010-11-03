require 'spec_helper.rb'

describe ReservationsController do 
 
   describe "GET 'home' " do 
       it "should be successfull" do 
         get 'new'
         response.should be_success
       end
   end

end

