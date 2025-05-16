require "rails_helper"

RSpec.describe "Posts", type: :request do
  include Rails.application.routes.url_helpers  # Add this line

  let!(:post_record) { Post.create!(title: "To be deleted", body: "Some content") }

  it "deletes a post" do
    expect {
      delete post_path(post_record)
    }.to change(Post, :count).by(-1)
  end

  it "creates a post with valid params" do
    expect {
      post "/posts", params: { post: { title: "New Post", body: "New content" } }
    }.to change(Post, :count).by(1)
  end

  it "updates a post" do
    patch "/posts/#{post_record.id}", params: { post: { title: "Updated!" } }
    expect(response).to redirect_to(post_path(post_record))
    follow_redirect!
    expect(response.body).to include("Updated!")
  end
end
