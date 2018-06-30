=begin
As a visitor,
When I visit `/comedians`
Then I also see the average age for all comedians.
=end

RSpec.describe do
  context 'user visits /comedians' do
    it 'shows average age of all comedians' do
      comedian1 = Comedian.create(name: 'Ian', age: 40)
      comedian2 = Comedian.create(name: 'Robin', age: 50)
      expected = 45

      visit '/comedians'

      expect(page).to have_content(expected)
    end
  end
  describe 'Class methods' do
    it 'shows average age of all comedians' do
      comedian1 = Comedian.create(name: 'Ian', age: 40)
      comedian2 = Comedian.create(name: 'Robin', age: 50)
      expected = 45

      expect(Comedian.average_age).to eq(expected)
    end
  end
end
