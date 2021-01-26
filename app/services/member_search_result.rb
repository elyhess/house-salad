class MemberSearchResult

	def initialize(state)
		@state = state
	end

	def members
		data = service.members_by_state
		data[:results].map do |mem|
			Member.new(mem)
		end
	end

	def service
		PropublicaService.new(@state)
	end

end
