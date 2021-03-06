require "rails_helper"

describe Member do
	it 'exists' do
		attributes = {name: "Alice",
		              party: "D",
		              role: "Representative",
		              district: "1"}

		member = Member.new(attributes)
		expect(member).to be_an_instance_of(Member)
	end

	it 'has attributes' do
		attributes = {name: "Alice",
		              party: "D",
		              role: "Representative",
		              district: "1"}

		member = Member.new(attributes)

		expect(member.name).to eq("Alice")
		expect(member.role).to eq("Representative")
		expect(member.district).to eq("1")
		expect(member.party).to eq("D")
	end

end