# frozen_string_literal: true

require 'rails_helper'

feature 'Visiting the home page' do
  # background do
  #  User.make(email: 'user@example.com', password: 'caplin')
  # end

  context 'When not logged in' do
    scenario 'User is offered a link to sign in' do
      visit root_path
      click_link 'sign in'
      expect(page.current_path).to eq sign_in_path
    end
  end
end
