# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create!(email: 'admin@admin.com', password: '123456')
User.create!(email: 'second@admin.com', password: '123456')
User.create!(email: 'test@test.com', password: '123456')

30.times do |i|
  uid = [1, 2, 3].sample
  qid = [1,2,3,4,5,6,7,8,9,10].sample
  Notice.create!(title: "#{i+1} 번 째 공지입니다.", content: "Hack Your Life!!!!", user_id: uid)
  Qna.create!(title: "#{i+1} 번 째 질문입니다.", content: "Hack Your Life!!!!", user_id: uid)
  Tip.create!(title: "#{i+1} 번 째 공유자료입니다.", content: "Hack Your Life!!!!", user_id: uid)
  Inclass.create!(title: "#{i+1} 번 째 자료입니다.", content: "Hack Your Life!!!!", user_id: uid)
  Qnareply.create!(title: "#{i+1} 번 째 답글입니다.", content: "Hack Your Life!!!!", user_id: uid, qna_id: qid)
end