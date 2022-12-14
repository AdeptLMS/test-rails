# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Todos', type: :request do
  describe 'GET /todos' do
    it 'returns http success', :aggregate_failures do
      get '/todos'
      expect(response).to have_http_status(:success)
      expect(json['todos'].size).to eq(2)
    end
  end

  describe 'POST /todos' do
    it 'returns http success', :aggregate_failures do
      expect do
        # do request
      end.to change(Todo, :count).by(1)

      expect(response).to have_http_status(:created)
    end

    context 'when invalid params' do
      # do request
      it { expect(response).to have_http_status(:unprocessable_entity) }
    end
  end

  describe 'GET /todos/:id' do
    it 'returns http success' do
      # do request
      expect(response).to have_http_status(:success)
    end
  end
end
