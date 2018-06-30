=begin
As a visitor,
When I visit `/comedians`
Then I also see the count of specials for each comedian.
=end

RSpec.describe do
  context 'visit /comedians' do
    it "should see a comedian's total number of specials" do
      comedian = Comedian.create(name: 'Ian', age: 40)
      special1 = comedian.specials.create(name: 'Soap Box')
      special2 = comedian.specials.create(name: 'Soup Pot')
      special_count = "Number of Specials: #{comedian.specials_count}"

      visit('/comedians')

      expect(page).to have_content(special_count)
    end
  end
  describe 'Instance methods' do
    it 'total number of specials' do
      comedian = Comedian.create(name: 'Ian', age: 40)
      special1 = comedian.specials.create(name: 'Soap Box')
      special2 = comedian.specials.create(name: 'Soup Pot')
      special_count = 2

      expect(comedian.specials_count).to eq(special_count)
    end
  end
end
