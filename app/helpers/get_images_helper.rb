module GetImagesHelper
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

		if params[:site].blank?
			flash.now[:error] = "Input a site please!"
		else
			if @stuff.content.blank?
				@stuff.content= "No Content on Site"
			else
				flash.now[:success] = "Yo SH*T is on the #{params[:side]} side now!"
			end
		end
	end
	
end
