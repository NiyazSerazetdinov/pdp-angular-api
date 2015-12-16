require "rails_helper"
require "rspec_api_documentation/dsl"

resource "Comments" do
  header "Accept", "application/json"

  subject(:response) { json_response_body }

  post "/v1/articles/:article_id/comments" do
    let(:article) { create :article }
    let!(:article_id) { article.id }
    let(:comment) { { text: "Text" } }
    let(:created_comment) { Comment.last }

    parameter :article_id, "Article's ID"
    parameter :comment, "Comment's params"

    example_request "Create a comment" do
      expect { do_request }.to change { Comment.count }.by(1)
      expect(response["comment"]).to be_a_comment_representation(created_comment)
    end
  end
end
