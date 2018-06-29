=begin
As a visitor,
When I visit `/comedians`
Then I also see a list of each comedian's specials.
=end

RSpec.describe do
  describe 'visits comedians/show page' do
    it "should see a comedian's specials" do
      comedian = Comedian.create(name: 'Ian',
                                 age: 40,
                                 specials: Special.create(name: 'Soap Box'))

      visit("/comedians/#{comedian.id}")

      expect(page).to have_content(comedian.name)
      expect(page).to have_content(comedian.age)
      expect(page).to have_content(comedian.specials)
    end
  end
end
