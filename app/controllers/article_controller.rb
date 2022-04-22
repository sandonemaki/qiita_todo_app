class ArticleController < ApplicationController
  def index
    # Array
    articles =
      [
        [200, "2020/02/01", "2021/02/01", "いいタイトル", "Ruby"],
        [300, "2022/02/01", "2021/05/01", "わるいタイトル", "HTML"]
      ]

    articles_view_model =
      ArticleViewModel.new(
        articles_ary: articles,
        lgtm_count: articles.map{|article| article[0]},
        created_at: articles.map{|article| article[1]},
        updated_at: articles.map{|article| article[2]},
        title: articles.map{|article| article[3]},
        tag_name: articles.map{|article| article[4]})
    render("index", locals: {articles: articles_view_model})
  end
end
