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
      comedian_age = "Age: #{comedian1.age}"
      comedian_name = comedian2.name

      visit '/comedians'

      expect(page).to have_content(comedian_age)
      expect(page).to have_content(comedian_name)
    end
  end
end
