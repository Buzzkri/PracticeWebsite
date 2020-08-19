class Api::CommentsController < ApplicationController
  before_action :set_song
  before_action :set_comment, only: [:show, :update, :destroy]

  def index
    render json: @song.reviews
  end

  def show
    render json: @comment
  end

  def create
    comment = @comment.reviews.new(comment_params)
    if comment.save
      render json: comment
    else
      render json: comment.errors, status: 422
    end
  end

  def update
    if @comment.update(comment_params)
      render json: @comment
    else
      render json: @comment.errors, status: 422
    end
  end

  def destroy
    @comment.destroy
  end

  private
  def set_comment
    @comment = Comment.find(params[:id])
  end

  def comment_params
    params.require(:comment).permit(:title, :body, :stars)
  end

  def set_song
    @song = Song.find(params[song.id])
  end
end
