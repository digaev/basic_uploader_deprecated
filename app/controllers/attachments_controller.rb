class AttachmentsController < ApplicationController
  def create
    f = FileAttachment.create!(file_params)
    render json: f, status: 201
  end

  private

  def file_params
    params.permit(:attachment)
  end
end
