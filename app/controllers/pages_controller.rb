class PagesController < ApplicationController
  def home
    @posts = Post.all
    @images = Image.all
    @links = Link.all
  end
end
