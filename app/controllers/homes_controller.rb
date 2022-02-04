class HomesController < ApplicationController
  def top
    @bookes=Book.all
  end
end
