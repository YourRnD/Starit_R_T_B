class FeedbacksController < ApplicationController
  def index
    @feedbacks = Feedback.all
    if @feedbacks
      render json: { data: @feedbacks }
    else
      render json: {
        status: 500,
        errors: ['no feedbacks found']
      }
    end
  end
end
