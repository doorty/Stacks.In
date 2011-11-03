class ContentsController < ApplicationController
  skip_before_filter :require_login, :only => [:index, :show]

  def index
    @contents = Content.all
  end

  def show
    @content = Content.find(params[:id])
  end

  def new
    @content = Content.new
  end

  def edit
    @content = Content.find(params[:id])
  end

  def create
    @content = Content.new(params[:content])

    respond_to do |format|
      if @content.save
        format.html { redirect_to stacks_url, notice: 'Content was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end
  end

  def update
    @content = Content.find(params[:id])

    respond_to do |format|
      if @content.update_attributes(params[:content])
        format.html { redirect_to stacks_url, notice: 'Content was successfully updated.' }
      else
        format.html { render action: "edit" }
      end
    end
  end

  def destroy
    @content = Content.find(params[:id])
    @content.destroy

    respond_to do |format|
      format.html { redirect_to stacks_url }
    end
  end
end
