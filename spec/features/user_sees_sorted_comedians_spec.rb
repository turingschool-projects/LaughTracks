RSpec.describe 'a visitor visits the comedians page with a sort query by name' do
  it 'should show a list of comedians in sorted order by name' do
    comedian_1 = Comedian.create(name:'John Doe', age: 45, city: 'Westfield')
    comedian_2 = Comedian.create(name:'Jane Doe', age: 50, city: 'Westfield')
    comedian_3 = Comedian.create(name:'Sissy Spacey', age: 32, city: 'Concord')
    visit '/comedians?sort=name'

    expect(all(".item_1")[0]).to have_content("Jane Doe")
    expect(all(".item_1")[1]).to have_content("John Doe")
    expect(all(".item_1")[2]).to have_content("Sissy Spacey")
  end
end
