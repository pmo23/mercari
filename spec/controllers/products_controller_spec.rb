require 'rails_helper'

describe ProductsController do
  let(:product) { create(:product) }
  let(:user) { create(:user) }

  describe '#new' do
    context 'log in' do
      before do
        login user
        get :new
      end
      it 'assigns @product' do
        expect(assigns(:product)).to be_a_new(Product)
      end
      it 'redners new' do
        expect(response).to render_template :new
      end
    end
    context 'not log in' do
      before do
        get :new
      end
      it 'redirects to new_user_session_path' do
        expect(response).to redirect_to(new_user_session_path)
      end
    end
  end

  describe '#show' do
    it "assigns @product" do
      expect(assigns(:product)).to eq @product
    end

    it "renders show" do
      render_template :show
    end
  end

  describe '#create' do
    let(:params) { { user_id: user.id, product: attributes_for(:product) } }
    context 'log in' do
      before do
        login user
      end
      context 'can save' do
        subject {
          post :create,
          params: params
        }
        it 'count up message' do
           expect{ subject }.to change(Product, :count).by(1)
        end
        it 'redirects to index' do
          subject
          expect(response).to redirect_to("/")
        end
      end
      context 'can not save' do
        let(:invalid_params) { { user_id: user.id, product: attributes_for(:product, name: nil) } }
        subject {
          post :create,
          params: invalid_params
        }
        it 'does not count up' do
          expect{ subject }.not_to change(Product, :count)
        end
        it 'renders new' do
          subject
          expect(response).to render_template :new
        end
      end
    end
    context 'not log in' do
      it 'redirects to new_user_session_path' do
        post :create, params: params
        expect(response).to redirect_to(new_user_session_path)
      end
    end
  end
end
