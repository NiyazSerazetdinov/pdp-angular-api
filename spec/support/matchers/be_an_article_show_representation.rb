RSpec::Matchers.define :be_an_article_show_representation do
  match do |json|
    response_attributes = %w(
      id
      title
      text
      created_at
      comments
    )

    expect(json).to be
    expect(json).to include_attributes(response_attributes)
  end
end
