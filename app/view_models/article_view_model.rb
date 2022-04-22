class ArticleViewModel
  attr_reader :articles_ary, :lgtm_count, :created_at, :updated_at, :title, :tag_name

  def initialize(articles_ary: [], lgtm_count: [], created_at: [], updated_at: [], title: [], tag_name: [])
    @articles_ary = articles_ary
    @lgtm_count   = lgtm_count
    @created_at   = created_at
    @updated_at   = updated_at
    @title        = title
    @tag_name     = tag_name
  end

end
