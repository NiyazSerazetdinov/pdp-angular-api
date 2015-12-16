require "rails_helper"

describe ArticleSerializer do
  let(:article) { build :article }
  let(:json) { ActiveModel::SerializableResource.serialize(article).to_json }
  let(:article_json) { parse_json(json)["article"] }

  it "returns article" do
    expect(article_json).to be_an_article_representation(article)
  end
end
