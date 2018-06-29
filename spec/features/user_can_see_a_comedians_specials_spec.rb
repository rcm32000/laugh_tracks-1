=begin
As a visitor,
When I visit `/comedians`
Then I also see a list of each comedian's specials.
=end

RSpec.describe do
  describe 'visits comedians/show page' do
    it "should see a comedian's specials" do
      special1 = Special.create(name: 'Soap Box')
      special2 = Special.create(name: 'Soup Pot')

      visit('/comedians')

      expect(page).to have_content(special1.name)
      expect(page).to have_content(special2.name)
    end
  end
end
