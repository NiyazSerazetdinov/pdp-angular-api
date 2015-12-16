class ArticleShowSerializer < ArticleSerializer
  has_many :comments
end
