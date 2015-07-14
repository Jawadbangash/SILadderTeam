class AdsController < ApplicationController

	def new
	     @ad=Ad.new
	end


	def create
		@ad=Ad.new(ad_params)	


		@ad.price = @ad.variations * 5
		
		    # redirect_to charges_path
	
	end

	private

		def ad_params
			params.require(:ad).permit(:variations)
		end

end
