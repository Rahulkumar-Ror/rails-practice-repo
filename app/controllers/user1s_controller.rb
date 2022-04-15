class User1sController < ApplicationController
  def index
    respond_to do |format|
      format.html { render html: "Hello World !! checking only" }
    end
  end
end
