require 'rails_helper'

describe SimplePagesController, type: :controller do
    context "get #index" do
        it "correctly render index template" do
            get :index
            expect(response).to be_ok
            expect(response).to render_template('index')
        end
    end
end