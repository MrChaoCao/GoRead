require 'rails_helper'

RSpec.describe Api::UsersController, type: :controller do

  describe 'POST #create' do
    context 'with invalid params' do
      it 'validates the presence of the user\'s username and password' do
        post :create, params: {
          user: {
            username: 'chao_cao',
            password: '',
            email: 'chao.com'
          }
        }

        expect(response).to have_http_status(422)
      end

        it 'validates that the password is at least 6 characters long' do
          post :create, params: {
            user: {
              username: 'chao_cao',
              password: 'short',
              email: 'chao.com'
            }
          }

          expect(response).to have_http_status(422)
        end
      end

      context 'with valid params' do
        it 'logs in the user' do
          post :create, format: :json, params: {
            user: {
              username: 'chao_cao',
              password: 'password',
              email: 'chao.com'
            }
          }

          user = User.find_by_username('chao_cao')
          expect(session[:session_token]).to eq(user.session_token)
        end
      end
    end
end
