require './app/models/comedian'
require './app/models/special'

Comedian.destroy_all
Special.destroy_all

Comedian.create(name: 'Dane Cook', age: 32, city: 'Los Angeles')
Comedian.create(name: 'Dane Cook', age: 32, city: 'Los Angeles')
Comedian.create(name: 'Dane Cook', age: 32, city: 'Los Angeles')
Comedian.create(name: 'Dane Cook', age: 32, city: 'Los Angeles')

Special.create(name: 'Fluffy and Proud', comedian_id: 2, run_time_minutes: 60, image_url: 'adsda')
Special.create(name: 'Fluffy and Proud', comedian_id: 2, run_time_minutes: 60, image_url: 'adsda')
Special.create(name: 'Fluffy and Proud', comedian_id: 2, run_time_minutes: 60, image_url: 'adsda')
Special.create(name: 'Fluffy and Proud', comedian_id: 2, run_time_minutes: 60, image_url: 'adsda')
