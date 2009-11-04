FasterCSV.foreach("#{RAILS_ROOT}/public/erics_movies.csv") do |row|
  title = row[0]
  next if title == "Title"
  rating = row[8]
  genre = row[13].split("|").first
  Movie.create(
    :title => title,
    :rating => rating,
    :genre => genre
  )
end
