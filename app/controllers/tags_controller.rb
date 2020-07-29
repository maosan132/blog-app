# frozen_string_literal: true

class TagsController < ApplicationController
  def show
    @tag = Tag.find(params[:id])
    end

  def index
    @tag = Tag.all
  end

  before_action :require_login, only: [:destroy]
  
  def destroy
    @tag = Tag.destroy(params[:id])
    flash.notice = "'#{@tag.name}' Deleted!"
    redirect_to articles_path
  end
end
