class GetheadersController < ApplicationController
  # GET /getheaders
  # GET /getheaders.json
  def index
    @getheaders = Getheader.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @getheaders }
    end
  end

  # GET /getheaders/1
  # GET /getheaders/1.json
  def show
    @getheader = Getheader.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @getheader }
    end
  end

  # GET /getheaders/new
  # GET /getheaders/new.json
  def new
    @getheader = Getheader.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @getheader }
    end
  end

  # GET /getheaders/1/edit
  def edit
    @getheader = Getheader.find(params[:id])
  end

  # POST /getheaders
  # POST /getheaders.json
  def create
    @getheader = Getheader.new(params[:getheader])

    respond_to do |format|
      if @getheader.save
        format.html { redirect_to @getheader, notice: 'Getheader was successfully created.' }
        format.json { render json: @getheader, status: :created, location: @getheader }
      else
        format.html { render action: "new" }
        format.json { render json: @getheader.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /getheaders/1
  # PUT /getheaders/1.json
  def update
    @getheader = Getheader.find(params[:id])

    respond_to do |format|
      if @getheader.update_attributes(params[:getheader])
        format.html { redirect_to @getheader, notice: 'Getheader was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @getheader.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /getheaders/1
  # DELETE /getheaders/1.json
  def destroy
    @getheader = Getheader.find(params[:id])
    @getheader.destroy

    respond_to do |format|
      format.html { redirect_to getheaders_url }
      format.json { head :no_content }
    end
  end
end
