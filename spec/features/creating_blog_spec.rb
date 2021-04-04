require "rails_helper"

=begin
Actions:
Visit root page
click on new article
fill in the title
fill in the body
create blog post

Expectations:
Blog post has been created
Blog path
=end
RSpec.feature "Creating Blog Post" do
  scenario "A user creates new blog post" do
    visit "/"

    click_link "New Article"
    
    fill_in "Title", with: "Creating A Blog Post"
    fill_in "Body", with: "Lorem Ipsum"

    click_button "Create Blog Post"

    expect(page).to have_content("Blog post has been created")
    expect(page.currrent_path).eq(blogs_path)
  end
end
