class TagsController < ApplicationController
  before_action :find_tag, only: [:edit, :update, :destroy]
  before_action :require_session, except: [:index, :show]

  def index
    @tags = Tag.all
  end

  def new
    @tag = Tag.new
  end

  def create
    @tag = Tag.new(name: params[:tag][:name])
    if @tag.save
      flash[:now] = 'Tag successfully created'
      redirect_to tags_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @tag.update(name: params[:tag][:name])
      flash[:notice] = 'Tag successfully updated!'
      redirect_to tags_path
    else
      render :edit
    end
  end

  def destroy
    @tag.destroy
    flash[:notice] = 'Tag deleted'
    redirect_to tags_path
  end

  private

  def find_tag
    @tag = Tag.find(params[:id])
  end
end
