require 'rails_helper'

RSpec.feature "Blogs", type: :feature do
  scenario 'Post a new blog' do
    visit blogs_path
    click_link 'New Blog'
    fill_in 'Title', with: 'hello'
    fill_in 'Content', with: 'world'
    click_button 'Create Blog'
    expect(page).to have_content 'Blog was successfully created.'
    expect(page).to have_content 'hello'
    expect(page).to have_content 'world'
  end
end
