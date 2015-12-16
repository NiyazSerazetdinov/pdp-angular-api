require "rails_helper"
require "rspec_api_documentation/dsl"

resource "Articles" do
  header "Accept", "application/json"

  subject(:response) { json_response_body }

  get "/v1/articles" do
    let!(:articles) { create_list(:article, 2) }

    example_request "Get list of articles" do
      expect(response["articles"].size).to eq(2)
      expect(response["articles"].first).to be_an_article_representation(articles.first)
    end
  end

  get "/v1/articles/:id" do
    let!(:article) { create :article, id: id }
    let(:id) { 1 }

    parameter :id, "Article's ID"

    example_request "Get an article" do
      expect(response["article"]).to be_an_article_representation(article)
    end
  end

  post "/v1/articles" do
    let(:article) { { title: "Title", text: "Text" } }
    let(:created_article) { Article.last }

    parameter :article, "Article's params"

    example_request "Create an article" do
      expect { do_request }.to change { Article.count }.by(1)
      expect(response["article"]).to be_an_article_representation(created_article)
    end
  end
end
