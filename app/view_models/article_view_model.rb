class ArticleViewModel
  attr_reader :lgtm_count, :created_at, :updated_at, :title

  def initialize(a:, b:, c:, d:)
    @lgtm_count   = a
    @created_at   = b
    @updated_at   = c
    @title        = d
  end
end
