require 'rails_helper'

RSpec.describe EnfermeirosController, type: :controller do
    it 'response succefully' do
        get :index
        expect(response).to be_sucess
    end
end