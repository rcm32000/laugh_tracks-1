=begin
As a visitor,
when I visit `/comedians?age=34`
Then I see a list of all comedians with an age of 34.
=end

RSpec.describe do
  describe 'user visits /comedians?age=34' do
    it 'shows all comedians with age 34' do
      comedian1 = Comedian.create(name: 'Ian', age: 40)
      comedian2 = Comedian.create(name: 'Fluffy', age: 34)
      comedian3 = Comedian.create(name: 'George', age: 34)
      comedian1 = comedian1.name
      comedian2 = comedian2.name
      comedian3 = comedian3.name

      visit '/comedians?age=34'

      expect(page).to have_content(comedian2)
      expect(page).to have_content(comedian3)
      expect(page).to_not have_content(comedian1)
    end
  end
end
