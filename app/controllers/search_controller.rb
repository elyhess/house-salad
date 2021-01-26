class SearchController < ApplicationController

	def index
		state = params[:state]
		@search = MemberSearchResult.new(state)
	end

end