# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
names = ['apple', 'orange', 'banana']
age = [20, 15, 25]
#each_with_indexは第２引数でindexを持つ
names.each_with_index do |fruit, i|
  Sample.create(:name => "#{fruit}", :age => "#{age[i]}")
end  #モデル名(ここではSampleはクラス名を記述する)
