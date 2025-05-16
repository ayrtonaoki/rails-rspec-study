require "rails_helper"

RSpec.describe "Posts", type: :system do
  before do
    driven_by(:rack_test)  # Avoids using Chrome/JS
  end

  it "shows the posts index" do
    Post.create!(title: "Hello", body: "World")
    visit "/posts"
    expect(page).to have_content("Hello")
  end

  it "creates a post" do
    visit "/posts/new"
    fill_in "Title", with: "New Post"
    fill_in "Body", with: "Post content"
    click_button "Create Post"

    expect(page).to have_content("Post was successfully created")
    expect(page).to have_content("New Post")
  end

  it "edits a post" do
    post = Post.create!(title: "Old Title", body: "Old Body")
    visit "/posts/#{post.id}/edit"
    fill_in "Title", with: "Updated Title"
    click_button "Update Post"

    expect(page).to have_content("Post was successfully updated")
    expect(page).to have_content("Updated Title")
  end
end
