class GetImagesController < ApplicationController
  # GET /get_images
  # GET /get_images.json
  def index
    @get_images = GetImage.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @get_images }
    end
  end

  # GET /get_images/1
  # GET /get_images/1.json
  def show
    @get_image = GetImage.find(params[:id])
    @content=urlcontent(@get_image.link).css('#header-img')
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @get_image }
    end
  end

  # GET /get_images/new
  # GET /get_images/new.json
  def new
    @get_image = GetImage.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @get_image }
    end
  end

  # GET /get_images/1/edit
  def edit
    @get_image = GetImage.find(params[:id])
  end

  # POST /get_images
  # POST /get_images.json
  def create
    params[:get_image][:subreddit]=read(params[:get_image][:link]).title
    @get_image = GetImage.new(params[:get_image])
    
    respond_to do |format|
      if @get_image.save
        format.html { redirect_to @get_image, notice: 'Get image was successfully created.' }
        format.json { render json: @get_image, status: :created, location: @get_image }
      else
        format.html { render action: "new" }
        format.json { render json: @get_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /get_images/1
  # PUT /get_images/1.json
  def update
    @get_image = GetImage.find(params[:id])

    respond_to do |format|
      if @get_image.update_attributes(params[:get_image])
        format.html { redirect_to @get_image, notice: 'Get image was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @get_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /get_images/1
  # DELETE /get_images/1.json
  def destroy
    @get_image = GetImage.find(params[:id])
    @get_image.destroy

    respond_to do |format|
      format.html { redirect_to get_images_url }
      format.json { head :no_content }
    end
  end

  private

  def urlcontent(link)
    require 'open-uri'
    doc = Nokogiri::HTML(open(link))
  end

  def read(site)
    Readit::Config.consumer_key = "trigun0x2"
    Readit::Config.consumer_secret = "TcjVwsvrsTTsxcXp3Xzs6ZVqbmUssYNd"
    Readit::Config.parser_token = "1e6ede01e61c2c1de9b740d9d4f53857f4c9a2ba"

    @api=Readit::API.new 'trigun0x2','TcjVwsvrsTTsxcXp3Xzs6ZVqbmUssYNd'

    @parser = Readit::Parser.new "1e6ede01e61c2c1de9b740d9d4f53857f4c9a2ba"
    @stuff=@parser.parse site

  end
end
