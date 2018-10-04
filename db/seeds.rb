comedian_1 = Comedian.create(:name="", :age="", :city="")
special_1 = comedian_1.specials.create(:name="", :date="", :run_time="")
special_2 = comedian_1.specials.create(:name="", :date="", :run_time="")
special_3 = comedian_1.specials.create(:name="", :date="", :run_time="")

# comedian = Comedian.create(...)
# special_1 = comedian.specials.create(...)
# special_2 = comedian.specials.create(...)
#
# #or
#
# special_1 = Special.create(...)
# comedian = Comedian(..., specials: [special_1, special_2])
#
# # or
#
# comedian = COmedian.create(...)
# special_1 = Special.create(...)
# comedian.specials << special_1
