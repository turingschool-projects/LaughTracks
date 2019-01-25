require_relative '../app/models/comedian'

Comedian.destroy_all
Special.destroy_all

Comedian.create()
Special.create()
