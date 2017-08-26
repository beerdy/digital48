class ReviewsController < ApplicationController
  before_action :set_review, only: [:show, :edit, :update, :destroy]

  # GET /reviews
  # GET /reviews.json
  def index
    @reviews_py = []
    @reviews_ur = []
    Review.all.each do |review|
      review.company ? @reviews_py<<review : @reviews_ur<<review 
    end
  end
end
