require 'rails_helper'

describe Product do
    
    context "avarage rating" do
        product = FactoryBot.create(:product)
        user = FactoryBot.create(:user)
        before do
            product.comments.create!(rating: 1, user: user, body: "Awful bike!")
            product.comments.create!(rating: 3, user: user, body: "Ok bike!")
            product.comments.create!(rating: 5, user: user, body: "Great bike!")
        end
        it "avarage rating should be 3"do
          expect(product.average_rating).to eq 3
        end
        it "unnamed product should be unvalid"do
          expect(Product.new(description: "not that bad")).not_to be_valid
        end
    end
    
end