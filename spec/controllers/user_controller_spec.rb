require 'rails_helper'

describe UsersController, type: :controller do
    
    
    
    describe 'GET #show' do
    
    context "user is loged in" do
        user = FactoryBot.create(:user)
        user2 = FactoryBot.create(:user)
        
        before do
            sign_in user
        end
        it "correct user details" do
            get :show, params: {id: user.id}
            expect(response).to be_ok
            expect(assigns(:user)).to eq user
        end
        it "redirect if another user" do
            get :show, params: {id: user2.id}
            expect(response).to redirect_to (root_path)
        end
        
    end
    context "user is loged out" do
        user3 = FactoryBot.create(:user)
        
        it "redirect to login" do
            get :show, params: {id: user3.id}
            expect(response).to redirect_to (new_user_session_path)
        end
        
    end
  end
    
end