RSpec.describe 'as a visitor', type: :feature do

  describe 'when I visit /comedians'
    it 'should display a list of comedians' do
      john = Comedian.create(name: "John Mulaney", age: 36, city: "Chicago, IL", image: "https://static01.nyt.com/images/2018/05/13/magazine/13mag-talk-1/13mag-talk-1-superJumbo.jpg?quality=90&auto=webp")
      michelle = Comedian.create(name: "Michelle Wolf", age: 33, city: "Hershey, PA", image: "https://media.gq.com/photos/5be9ec11f681dd1052b31fe7/3:4/w_640/Michelle%20Wolf-Breakouts-GQ-December-120118-01.jpg")
      john_special_1 = Special.create(name: "Kid Gorgeous at Radio City", length: 65, image: "https://m.media-amazon.com/images/M/MV5BNzY4ZGM4ZDEtMDJiNS00MGZlLWJkZTctY2VmYzc4YTQzOWZlXkEyXkFqcGdeQXVyNTMxMjgxMzA@._V1_.jpg", comedian_id: 1)
      john_special_2 = Special.create(name: "The Comeback Kid", length: 62, image: "https://m.media-amazon.com/images/M/MV5BMDQ3NjU0NmQtYjgyZS00MzIzLWJjNDEtMWY5YjczYjc0MTMyXkEyXkFqcGdeQXVyMjI0MjUyNTc@._V1_.jpg", comedian_id: 1)
      michelle_special = Special.create(name: "Nice Lady", length: 58, image: "https://m.media-amazon.com/images/M/MV5BZjgxMDY5YzctODA2NC00MzY2LTgxYzAtMDc4NmY3YTA0M2QyXkEyXkFqcGdeQXVyNTM3MDMyMDQ@._V1_.jpg", comedian_id: 2)

      visit '/comedians'
      within('#comedians') do
        expect(page).to have_content(john.name)
        expect(page).to have_content(john.age)
        expect(page).to have_content(john.city)

        expect(page).to have_content(michelle.name)
        expect(page).to have_content(michelle.age)
        expect(page).to have_content(michelle.city)

      end
    end
    it "lists each comedian's TV special's name" do
      john = Comedian.create(name: "John Mulaney", age: 36, city: "Chicago, IL", image: "https://static01.nyt.com/images/2018/05/13/magazine/13mag-talk-1/13mag-talk-1-superJumbo.jpg?quality=90&auto=webp")
      michelle = Comedian.create(name: "Michelle Wolf", age: 33, city: "Hershey, PA", image: "https://media.gq.com/photos/5be9ec11f681dd1052b31fe7/3:4/w_640/Michelle%20Wolf-Breakouts-GQ-December-120118-01.jpg")
      john_special_1 = Special.create(name: "Kid Gorgeous at Radio City", length: 65, image: "https://m.media-amazon.com/images/M/MV5BNzY4ZGM4ZDEtMDJiNS00MGZlLWJkZTctY2VmYzc4YTQzOWZlXkEyXkFqcGdeQXVyNTMxMjgxMzA@._V1_.jpg", comedian_id: 1)
      john_special_2 = Special.create(name: "The Comeback Kid", length: 62, image: "https://m.media-amazon.com/images/M/MV5BMDQ3NjU0NmQtYjgyZS00MzIzLWJjNDEtMWY5YjczYjc0MTMyXkEyXkFqcGdeQXVyMjI0MjUyNTc@._V1_.jpg", comedian_id: 1)
      michelle_special = Special.create(name: "Nice Lady", length: 58, image: "https://m.media-amazon.com/images/M/MV5BZjgxMDY5YzctODA2NC00MzY2LTgxYzAtMDc4NmY3YTA0M2QyXkEyXkFqcGdeQXVyNTM3MDMyMDQ@._V1_.jpg", comedian_id: 2)

      visit '/comedians'

      within('#comedians') do
        expect(page).to have_content(john_special_1.name)
        expect(page).to have_content(john_special_1.length)
        expect(page).to have_content(john_special_2.name)

        expect(page).to have_content(michelle_special.name)
        expect(page).to have_content(michelle_special.length)
      end
    end


    it "should display statistics at the top" do
      john = Comedian.create(name: "John Mulaney", age: 36, city: "Chicago, IL", image: "https://static01.nyt.com/images/2018/05/13/magazine/13mag-talk-1/13mag-talk-1-superJumbo.jpg?quality=90&auto=webp")
      michelle = Comedian.create(name: "Michelle Wolf", age: 33, city: "Hershey, PA", image: "https://media.gq.com/photos/5be9ec11f681dd1052b31fe7/3:4/w_640/Michelle%20Wolf-Breakouts-GQ-December-120118-01.jpg")
      john_special_1 = Special.create(name: "Kid Gorgeous at Radio City", length: 65, image: "https://m.media-amazon.com/images/M/MV5BNzY4ZGM4ZDEtMDJiNS00MGZlLWJkZTctY2VmYzc4YTQzOWZlXkEyXkFqcGdeQXVyNTMxMjgxMzA@._V1_.jpg", comedian_id: 1)
      john_special_2 = Special.create(name: "The Comeback Kid", length: 62, image: "https://m.media-amazon.com/images/M/MV5BMDQ3NjU0NmQtYjgyZS00MzIzLWJjNDEtMWY5YjczYjc0MTMyXkEyXkFqcGdeQXVyMjI0MjUyNTc@._V1_.jpg", comedian_id: 1)
      michelle_special = Special.create(name: "Nice Lady", length: 58, image: "https://m.media-amazon.com/images/M/MV5BZjgxMDY5YzctODA2NC00MzY2LTgxYzAtMDc4NmY3YTA0M2QyXkEyXkFqcGdeQXVyNTM3MDMyMDQ@._V1_.jpg", comedian_id: 2)

      visit '/comedians'

      within('#statistics') do
        expect(page).to have_content(34.5)
        expect(page).to have_content(61.7)
        expect(page).to have_content("Chicago, IL; Hershey, PA")

      end
    end

  describe 'when I visit /comedians?age=34'
    it 'should display a list of comedians matching age criteria' do
      john = Comedian.create(name: "John Mulaney", age: 34, city: "Chicago, IL", image: "https://static01.nyt.com/images/2018/05/13/magazine/13mag-talk-1/13mag-talk-1-superJumbo.jpg?quality=90&auto=webp")
      michelle = Comedian.create(name: "Michelle Wolf", age: 33, city: "Hershey, PA", image: "https://media.gq.com/photos/5be9ec11f681dd1052b31fe7/3:4/w_640/Michelle%20Wolf-Breakouts-GQ-December-120118-01.jpg")
      ali = Comedian.create(name: "Ali Wong", age: 34, city: "San Francisco, CA")
      john_special_1 = Special.create(name: "Kid Gorgeous at Radio City", length: 65, image: "https://m.media-amazon.com/images/M/MV5BNzY4ZGM4ZDEtMDJiNS00MGZlLWJkZTctY2VmYzc4YTQzOWZlXkEyXkFqcGdeQXVyNTMxMjgxMzA@._V1_.jpg", comedian_id: 1)
      john_special_2 = Special.create(name: "The Comeback Kid", length: 62, image: "https://m.media-amazon.com/images/M/MV5BMDQ3NjU0NmQtYjgyZS00MzIzLWJjNDEtMWY5YjczYjc0MTMyXkEyXkFqcGdeQXVyMjI0MjUyNTc@._V1_.jpg", comedian_id: 1)
      michelle_special = Special.create(name: "Nice Lady", length: 58, image: "https://m.media-amazon.com/images/M/MV5BZjgxMDY5YzctODA2NC00MzY2LTgxYzAtMDc4NmY3YTA0M2QyXkEyXkFqcGdeQXVyNTM3MDMyMDQ@._V1_.jpg", comedian_id: 2)

      visit '/comedians?age=34'

      within('#comedians') do
        expect(page).to have_content(john.name)
        expect(page).to have_content(john.age)
        expect(page).to have_content(ali.age)
        expect(page).not_to have_content(michelle.age)
      end

      within('#statistics') do
        expect(page).to have_content(john.city)
        expect(page).to have_content(ali.city)
        expect(page).not_to have_content(michelle.city)
      end
    end

    it 'should display a count of their specials' do
      john = Comedian.create(name: "John Mulaney", age: 34, city: "Chicago, IL", image: "https://static01.nyt.com/images/2018/05/13/magazine/13mag-talk-1/13mag-talk-1-superJumbo.jpg?quality=90&auto=webp")
      michelle = Comedian.create(name: "Michelle Wolf", age: 33, city: "Hershey, PA", image: "https://media.gq.com/photos/5be9ec11f681dd1052b31fe7/3:4/w_640/Michelle%20Wolf-Breakouts-GQ-December-120118-01.jpg")
      john_special_1 = Special.create(name: "Kid Gorgeous at Radio City", length: 65, image: "https://m.media-amazon.com/images/M/MV5BNzY4ZGM4ZDEtMDJiNS00MGZlLWJkZTctY2VmYzc4YTQzOWZlXkEyXkFqcGdeQXVyNTMxMjgxMzA@._V1_.jpg", comedian_id: 1)
      john_special_2 = Special.create(name: "The Comeback Kid", length: 62, image: "https://m.media-amazon.com/images/M/MV5BMDQ3NjU0NmQtYjgyZS00MzIzLWJjNDEtMWY5YjczYjc0MTMyXkEyXkFqcGdeQXVyMjI0MjUyNTc@._V1_.jpg", comedian_id: 1)
      michelle_special = Special.create(name: "Nice Lady", length: 58, image: "https://m.media-amazon.com/images/M/MV5BZjgxMDY5YzctODA2NC00MzY2LTgxYzAtMDc4NmY3YTA0M2QyXkEyXkFqcGdeQXVyNTM3MDMyMDQ@._V1_.jpg", comedian_id: 2)

      visit '/comedians'

      within('#comedians') do
        expect(page).to have_content(john.specials.count)
        expect(page).to have_content(michelle.specials.count)
      end

      within('#statistics') do
        expect(page).to have_content(3)
      end
    end

  describe 'when I visit /comedians/new'
    it 'should display a form to input a comedian' do

      visit '/comedians/new'

      within('.form') do
        expect(page).to have_button("Create Comedian")
        expect(page).to have_field("comedian[age]")
        expect(page).to have_field("comedian[city]")
    end
  end

  describe 'when I submit the form'
    it 'should redirect me to /comedians' do
      john = Comedian.create(name: "John Mulaney", age: 34, city: "Chicago, IL", image: "https://static01.nyt.com/images/2018/05/13/magazine/13mag-talk-1/13mag-talk-1-superJumbo.jpg?quality=90&auto=webp")
      michelle = Comedian.create(name: "Michelle Wolf", age: 33, city: "Hershey, PA", image: "https://media.gq.com/photos/5be9ec11f681dd1052b31fe7/3:4/w_640/Michelle%20Wolf-Breakouts-GQ-December-120118-01.jpg")
      john_special_1 = Special.create(name: "Kid Gorgeous at Radio City", length: 65, image: "https://m.media-amazon.com/images/M/MV5BNzY4ZGM4ZDEtMDJiNS00MGZlLWJkZTctY2VmYzc4YTQzOWZlXkEyXkFqcGdeQXVyNTMxMjgxMzA@._V1_.jpg", comedian_id: 1)
      john_special_2 = Special.create(name: "The Comeback Kid", length: 62, image: "https://m.media-amazon.com/images/M/MV5BMDQ3NjU0NmQtYjgyZS00MzIzLWJjNDEtMWY5YjczYjc0MTMyXkEyXkFqcGdeQXVyMjI0MjUyNTc@._V1_.jpg", comedian_id: 1)
      michelle_special = Special.create(name: "Nice Lady", length: 58, image: "https://m.media-amazon.com/images/M/MV5BZjgxMDY5YzctODA2NC00MzY2LTgxYzAtMDc4NmY3YTA0M2QyXkEyXkFqcGdeQXVyNTM3MDMyMDQ@._V1_.jpg", comedian_id: 2)

      visit '/comedians/new'

      within('.form') do
        click_on "Create Comedian"
        expect(page).to have_current_path("/comedians")
      end
    end

end
