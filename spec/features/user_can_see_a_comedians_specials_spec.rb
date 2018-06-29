=begin
As a visitor,
When I visit `/comedians`
Then I also see a list of each comedian's specials.
=end

RSpec.describe do
  describe 'visits comedians/show page' do
    it "should see a comedian's specials" do
      comedian = Comedian.create(name: 'Ian', age: 40)
      special1 = comedian.specials.create(name: 'Soap Box')
      special2 = comedian.specials.create(name: 'Soup Pot')
      special1_name = special1.name
      special2_name = special2.name

      visit('/comedians')

      expect(page).to have_content(special1_name)
      expect(page).to have_content(special2_name)
    end
  end
end
