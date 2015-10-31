class EngineersController < ApplicationController
  def index
    @engineers = Engineer.all
  end
end
