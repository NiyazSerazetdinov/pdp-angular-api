RSpec::Matchers.define :be_an_article_representation do |article|
  match do |json|
    response_attributes = article.sliced_attributes %w(
      id
      title
      text
      created_at
    )

    expect(json).to be
    expect(json).to include_attributes(response_attributes)
  end
end
