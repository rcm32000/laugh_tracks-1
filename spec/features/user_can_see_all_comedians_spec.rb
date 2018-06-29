=begin
As a visitor,
When I visit `/comedians`
Then I see a list of comedians with the following
information for each comedian:
  * Name
  * Age
=end

RSpec.describe do
  describe 'user visits /comedians' do
    it 'shows list of all comedians with name and age' do
      comedian1 = Comedian.create(name: 'Ian', age: 40)
      comedian2 = Comedian.create(name: 'Dione', age: 25)

      visit '/comedians'

      expect(page).to have_content(comedian1.age)
      expect(page).to have_content(comedian2.name)
    end
  end
end
