class SvgpostsController < ApplicationController
  # GET /svgposts
  # GET /svgposts.json
  def index
    @svgposts = Svgpost.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @svgposts }
    end
  end

  # GET /svgposts/1
  # GET /svgposts/1.json
  def show
    @svgpost = Svgpost.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @svgpost }
    end
  end

  # GET /svgposts/new
  # GET /svgposts/new.json
  def new
    @svgpost = Svgpost.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @svgpost }
    end
  end

  # GET /svgposts/1/edit
  def edit
    @svgpost = Svgpost.find(params[:id])
  end

  # POST /svgposts
  # POST /svgposts.json
  def create
    @svgpost = Svgpost.new(params[:svgpost])

    respond_to do |format|
      if @svgpost.save
        format.html { redirect_to @svgpost, notice: 'Svgpost was successfully created.' }
        format.json { render json: @svgpost, status: :created, location: @svgpost }
      else
        format.html { render action: "new" }
        format.json { render json: @svgpost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /svgposts/1
  # PUT /svgposts/1.json
  def update
    @svgpost = Svgpost.find(params[:id])

    respond_to do |format|
      if @svgpost.update_attributes(params[:svgpost])
        format.html { redirect_to @svgpost, notice: 'Svgpost was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @svgpost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /svgposts/1
  # DELETE /svgposts/1.json
  def destroy
    @svgpost = Svgpost.find(params[:id])
    @svgpost.destroy

    respond_to do |format|
      format.html { redirect_to svgposts_url }
      format.json { head :no_content }
    end
  end
end
