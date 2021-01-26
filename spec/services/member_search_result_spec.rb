require "rails_helper"

describe MemberSearchResult do
	it 'exists' do
		member_search_result = MemberSearchResult.new("CO")

		expect(member_search_result).to be_an_instance_of(MemberSearchResult)
	end

	describe 'instance methods' do
		context "#members" do
			it 'should return members with a valid state' do
				member_search_result = MemberSearchResult.new("CO")

				expect(member_search_result.members.count).to eq(7)
				expect(member_search_result.members.first).to be_an_instance_of(Member)
			end
		end
	end
end