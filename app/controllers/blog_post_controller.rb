class BlogPostController < ApplicationController
  include Pagy::Backend
  def index
    @pagy,@blog_post = pagy(Blogpost.all, items: 5)
  end
end
