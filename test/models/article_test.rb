require 'test_helper'

class ArticleTest < ActiveSupport::TestCase

  def setup
    @article = Article.new(title: "Article about computers", link: "https://www.railstutorial.org/")
  end

  test "article should be valid" do
    assert @article.valid?
  end

  test "article title should be present" do
    @article.title = "        "
    assert_not @article.valid?
  end

  test "article title should not be too long" do
    @article.title = "a" * 106
    assert_not @article.valid?
  end

  test "article title should not be too short" do
    @article.title = "a"
    assert_not @article.valid?
  end

  test "article link should be present" do
    @article.link = "      "
    assert_not @article.valid?
  end

#  test "link should be valid" do
#
#  end

  test "link should not be too long" do
    @article.link = "a" * 1201
    assert_not @article.valid?
  end
end
