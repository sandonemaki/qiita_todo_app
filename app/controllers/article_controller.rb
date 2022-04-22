class ArticleController < ApplicationController
  def index
    articles =
      [
        [200, "2020/02/01", "2021/02/01", "いいタイトル", "Ruby"],
        [300, "2022/02/01", "2021/05/01", "わるいタイトル", "HTML"]
      ]

    articles_hoge = []
    articles.each do |akiji|
      articles_hoge << ArticleViewModel.new(a: akiji[0], b: akiji[1], c: akiji[2], d: akiji[3])
    end

    # map版
    articles_hoge = articles.map do |akiji|
      ArticleViewModel.new(a: akiji[0], b: akiji[1], c: akiji[2], d: akiji[3])
    end


    #articles_hoge =
    #[
    #  ArticleViewModel.new(a: 200, b: "2020/02/01", c: "2021/02/01", d: "いいタイトル"),
    #  ArticleViewModel.new(a: 200, b: "2020/02/01", c: "2021/02/01", d: "いいタイトル"),
    #  ArticleViewModel.new(a: 200, b: "2020/02/01", c: "2021/02/01", d: "いいタイトル"),
    #]
    render("index", locals: {huga: articles_hoge})
  end
end
