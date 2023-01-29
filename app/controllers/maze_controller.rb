# frozen_string_literal: true

class MazeController < ApplicationController
  def index
    render json: [], status: :ok
  end

  def create
    render json: nil, status: :created
  end

  def solution
    render json: { path: [] }
  end

  private

  def maze_params
    params.permit(:entrance, :gridSize, walls: [])
  end
end
