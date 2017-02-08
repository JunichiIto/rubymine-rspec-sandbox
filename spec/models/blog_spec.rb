require 'rails_helper'

RSpec.describe Blog, type: :model do
  describe 'attributes' do
    example "should return values" do
      blog = Blog.create!(title: 'hello', content: 'world')
      expect(blog).to have_attributes(
                          title: 'hello',
                          content: 'world',
                      )
    end
  end
end
