30.times  do
	article=Article.new({
		"title" => Faker::Lorem.word,"body" => Faker::Lorem.sentence, "category_id" => Category.all.sample.id, "published_date" => Faker::Date.between_except(1.year.ago, 1.year.from_now, Date.today)})
	article.save
end
30.times do
	article=Article.new({"title" =>Faker::Lorem.word, "body" => Faker::Lorem.paragraph, "published_date" => Faker::Date.between_except(1.year.ago, 1.year.from_now, Date.today)})
	article.save
end