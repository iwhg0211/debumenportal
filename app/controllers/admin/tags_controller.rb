class Admin::TagsController < ApplicationController

  def index
    @tag_lists = Tag.all
  end
  
  def create
    #tag = Tag.new(tag_para)
    #tag.save
    #render :index
    @post = Post.find(params[:post_id])
    redirect_to root_path
  end

  def edit
    @tag = Tag.find(params[:id])
  end
  
  def update
    tag = Tag.find(params[:id])
    tag.update(tag_params)
    redirect_to admin_tags_path
  end
  
  private

  def tag_params
    params.require(:tag).permit(:tag_name, :post_id)
  end

end