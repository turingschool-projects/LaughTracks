RSpec.describe "test commedians index page" do
  describe "as a visitor" do
    describe "when I visit /comedians" do
      it "displays comedians list" do
        Comedian.create(name: 'Louis CK', birthdate: (Date.parse('1/1/1967')).jd, city: 'Washington, DC')
        Comedian.create(name: 'Jim Gaffigan', birthdate: (Date.parse('1/1/1968')).jd, city: 'Elgin, IL')
        Comedian.create(name: 'Bill Burr', birthdate: (Date.parse('1/1/1969')).jd, city: 'Canton, MA')
        visit('/comedians')
        expect(page).to have_content('Louis CK')
        expect(page).to have_content('Jim Gaffigan')
        expect(page).to have_content('Bill Burr')
      end

      it "displays comedian attributes" do
        Comedian.create(name: 'Louis CK', birthdate: (Date.parse('1/1/1967')).jd, city: 'Washington, DC')
        Comedian.create(name: 'Jim Gaffigan', birthdate: (Date.parse('1/1/1968')).jd, city: 'Elgin, IL')
        Comedian.create(name: 'Bill Burr', birthdate: (Date.parse('1/1/1969')).jd, city: 'Canton, MA')
        visit('/comedians')
        expect(page).to have_content('Washington, DC')
        expect(page).to have_content('Elgin, IL')
        expect(page).to have_content('Canton, MA')
      end

      it "displays comedian attributes" do
        louis = Comedian.create(name: 'Louis CK', birthdate: (Date.parse('1/1/1967')).jd, city: 'Washington, DC')
        Special.create(name: 'Louis CK',
          release_date: Date.parse('1/1/2017'), runtime_length: 88, comedian_id: louis.id,
          image_url: "https://images.freeimages.com/images/large-previews/85a/daisy-s-1375598.jpg")
        Special.create(name: 'Oh My God',
          release_date: Date.parse('1/1/2013'), runtime_length: 94, comedian_id: louis.id,
          image_url: "https://images.freeimages.com/images/large-previews/85a/daisy-s-1375598.jpg")
        Special.create(name: 'Word: Live at Carnegie Hall',
          release_date: Date.parse('1/1/2012'), runtime_length: 98, comedian_id: louis.id,
          image_url: "https://images.freeimages.com/images/large-previews/85a/daisy-s-1375598.jpg")
        Special.create(name: 'Hilarious',
          release_date: Date.parse('1/1/2011'), runtime_length: 102, comedian_id: louis.id,
          image_url: "https://images.freeimages.com/images/large-previews/85a/daisy-s-1375598.jpg")

        jim = Comedian.create(name: 'Jim Gaffigan', birthdate: (Date.parse('1/1/1968')).jd, city: 'Elgin, IL')
        Special.create(name: 'Mr. Universe',
          release_date: Date.parse('1/1/2017'), runtime_length: 101, comedian_id: jim.id,
          image_url: "https://images.freeimages.com/images/large-previews/85a/daisy-s-1375598.jpg")
        Special.create(name: 'King Baby',
          release_date: Date.parse('1/1/2017'), runtime_length: 107, comedian_id: jim.id,
          image_url: "https://images.freeimages.com/images/large-previews/85a/daisy-s-1375598.jpg")
        Special.create(name: 'Beyond The Pale',
          release_date: Date.parse('1/1/2017'), runtime_length: 112, comedian_id: jim.id,
          image_url: "https://images.freeimages.com/images/large-previews/85a/daisy-s-1375598.jpg")
        Special.create(name: 'Doing My Time',
          release_date: Date.parse('1/1/2017'), runtime_length: 117, comedian_id: jim.id,
          image_url: "https://images.freeimages.com/images/large-previews/85a/daisy-s-1375598.jpg")

        bill = Comedian.create(name: 'Bill Burr', birthdate: (Date.parse('1/1/1969')).jd, city: 'Canton, MA')
        Special.create(name: 'Walk Your Way Out',
          release_date: Date.parse('1/1/2017'), runtime_length: 111, comedian_id: bill.id,
          image_url: "https://images.freeimages.com/images/large-previews/85a/daisy-s-1375598.jpg")
        Special.create(name: 'Im Sorry You Feel That Way',
          release_date: Date.parse('1/1/2017'), runtime_length: 108, comedian_id: bill.id,
          image_url: "https://images.freeimages.com/images/large-previews/85a/daisy-s-1375598.jpg")
        Special.create(name: 'Let It Go',
          release_date: Date.parse('1/1/2017'), runtime_length: 102, comedian_id: bill.id,
          image_url: "https://images.freeimages.com/images/large-previews/85a/daisy-s-1375598.jpg")
        Special.create(name: 'Why Do I Do This?',
          release_date: Date.parse('1/1/2017'), runtime_length: 112, comedian_id: bill.id,
          image_url: "https://images.freeimages.com/images/large-previews/85a/daisy-s-1375598.jpg")
        visit('/comedians')
        expect(page).to have_content('Oh My God')
        expect(page).to have_content('King Baby')
        expect(page).to have_content('Let It Go')

      end
    end
  end
end
