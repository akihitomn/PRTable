class TagsController < ApplicationController
  def show
    @tag = ActsAsTaggableOn::Tag.find_by(name: params[:name])
    @stories = Story.tagged_with(@tag).all.page(params[:page]).per(15).order('created_at DESC')
  end
end
