class ActiveSupport::TestCase
  def create_user(attrs = {})
    User.create(user_attributes(attrs))
  end

  def create_post(attrs = {})
    Post.create(post_attributes(attrs))
  end

  def create_question(attrs = {})
    Question.create(question_attributes(attrs))
  end

  protected

  def user_attributes(attrs)
    { name: 'Bob' }.merge! attrs
  end

  def post_attributes(attrs)
    { title: 'Sample Post' }.merge! attrs
  end

  def question_attributes(attrs)
    { body: 'Question Body' }.merge! attrs
  end
end
