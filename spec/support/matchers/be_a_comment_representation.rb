RSpec::Matchers.define :be_a_comment_representation do |comment|
  match do |json|
    response_attributes = comment.sliced_attributes %w(
      id
      text
      created_at
    )

    expect(json).to be
    expect(json).to include_attributes(response_attributes)
  end
end
