require "rails_helper"

describe ArticleShowSerializer do
  let(:article) { build :article }
  let!(:comment) { build :comment, article: article }

  let(:json) do
    ActiveModel::SerializableResource.serialize(article, serializer: described_class).to_json
  end
  let(:article_json) { parse_json(json)["article"] }

  it "returns article" do
    expect(article_json).to be_an_article_show_representation
  end
end
