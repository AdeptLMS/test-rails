# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'home#index'
  match '/*path', to: 'home#index', via: :all
end
