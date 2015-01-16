require 'rails_helper'

RSpec.describe LeadsController, :type => :controller do

  context 'GET #new' do
    before do
      get :new
    end

    it 'render new template' do
      expect(response).to render_template('new')
    end

    it 'assign new lead instance' do
      expect(assigns(:lead)).to be_an_instance_of(Lead)
    end
  end

end
