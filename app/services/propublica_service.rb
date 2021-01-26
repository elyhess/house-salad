class PropublicaService

	def initialize(state)
		@state = state
	end

	def members_by_state
		get_json("/congress/v1/members/house/#{@state}/current.json")
	end

	def conn
		Faraday.new(url: "https://api.propublica.org") do |faraday|
			faraday.headers["X-API-Key"] = ENV["PROPUBLICA_API_KEY"]
		end
	end

	def get_json(url)
		response = conn.get(url)
		data     = JSON.parse(response.body, symbolize_names: true)
	end

end
