class Special < ActiveRecord::Base
  belongs_to :comedians
  validates_presence_of :name,
                        :runtime_mins,
                        :comedian_id,
                        :image_url

  def self.average_special_length
    average(:runtime_mins).round
  end
end

# body {
#  background-color: blue;
# }
#
# header {
#    background: rgb(60, 60, 60);
#    height: 250px;
#    border-radius: 10%;
# }
#
# #h1 {
#    display: table;
#    font-family: 'Fira Sans', sans-serif;
#    font-size: 20px;
#    padding: 25px;
#    margin: auto;
#    color: white;
# }
#
# #stat_1{
#  display: inline-block;
#  width: 22%;
#  height: 200px;
#  margin: 1em;
#  font-family: 'Fira Sans', sans-serif;
#  color: white;
# }
#
# #stat_2 {
#  display:inline-block;
#  width: 22%;
#  height: 200px;
#  margin: 1em;
#  font-family: 'Fira Sans', sans-serif;
#  color: white;
# }
# #stat_3 {
#  display:inline-block;
#  width: 22%;
#  height: 200px;
#  margin: 1em;
#  font-family: 'Fira Sans', sans-serif;
#  color: white;
# }
# #stat_4 {
#  display: inline-block;
#  width: 22%;
#  height: 200px;
#  margin: 1em;
#  font-family: 'Fira Sans', sans-serif;
#  color: white
# }
#
# img {
#  border-radius: 20%;
#  display: block;
#  margin-left: auto;
#  margin-right: auto;
#  width: 20%;
# }
#
# #h1 {
#    display: table;
#    font-family: 'Fira Sans', sans-serif;
#    font-size: 18px;
#    padding: 25px;
#    margin: auto;
#    color: white;
# }
#
# /* main {
#  display: flex;
#  flex-direction: row;
# } */
# /* #info {
#  display: inline-block;
# }
#
# #s_info {
#  display: inline-block;
# } */
