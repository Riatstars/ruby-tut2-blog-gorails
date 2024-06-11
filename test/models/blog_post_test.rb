require 'test_helper'

class BlogPostTest < ActiveSupport::TestCase
  test 'draft? return true for draft blog post' do
    blog_post = blog_posts(:draft)
    assert blog_post.draft?
  end

  test 'draft? return false for published blog post' do
    blog_post = blog_posts(:published)
    refute blog_post.draft?
  end
  test 'draft? return false for schedulted blog post' do
    blog_post = blog_posts(:scheduled) 
    refute blog_post.draft?
  end
  test 'published? return true for published blog post' do
    blog_post = blog_posts(:published)
    assert blog_post.published?
  end
  test 'published? return false for draft blog post' do
    blog_post = blog_posts(:draft)
    refute blog_post.published?
  end
  test 'published? return false for scheduled blog post' do
    blog_post = blog_posts(:scheduled) 
    refute blog_post.published?
  end
  test 'schedulted? return true for scheduled blog post' do
    blog_post = blog_posts(:scheduled) 
    assert blog_post.scheduled?
  end
  test 'schedulted? return false for draft blog post' do
    blog_post = blog_posts(:draft)
    refute blog_post.scheduled?
  end
  test 'schedulted? return false for published blog post' do
    blog_post = blog_posts(:published)
    refute blog_post.scheduled?
  end
end
