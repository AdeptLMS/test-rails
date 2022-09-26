# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Tasks', type: :request do
  describe 'GET /todos/:todo_id/tasks' do
    it 'returns http success', :aggregate_failures do
      # do request
      expect(response).to have_http_status(:success)
      expect(json['tasks'].size).to eq(2)
    end

    context 'when todo not found' do
      it { expect(response).to have_http_status(:not_found) }
    end
  end

  describe 'POST /todos/:todo_id/tasks' do
    it 'returns http success', :aggregate_failures do
      expect do
        # do request
      end.to change(Task, :count).by(1)

      expect(response).to have_http_status(:created)
    end

    context 'when invalid params' do
      it { expect(response).to have_http_status(:unprocessable_entity) }
    end

    context 'when todo not found' do
      it { expect(response).to have_http_status(:not_found) }
    end
  end

  describe 'GET /todos/:todo_id/tasks/:id' do
    it 'returns http success', :aggregate_failures do
      # do request
      expect(response).to have_http_status(:success)
      expect(json['task']).not_to be_nil
    end

    context 'when todo not found' do
      it { expect(response).to have_http_status(:not_found) }
    end
  end
end
