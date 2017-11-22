require 'rails_helper'

RSpec.describe ConnectionsController, type: :controller do
  describe 'new' do
    before(:each) { get new_connection_path }
    it 'renders a new connection view' do
      expect(response).to render_template :new
    end
    it 'returns OK status' do
      expect(response).to be_ok
    end
    it 'assigns a connection instance variable' do
      expect(assigns[:connection]).to be_a Connection
    end
  end
end
