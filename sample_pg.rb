require 'pg'

connection = PG::connect(dbname: "goya")
connection. internal_encoding = "UTF-8"
begin
	result = connection.exec("select * from crops where not give_for = '自家消費';")

	result.each do |record|
		puts "ゴーヤの譲渡先 : #{record["give_for"]}"
	end
	result = connection.exec("select * from crops where quality = false;")

	result.each do |record|
		puts "ゴーヤの品質 : #{record["quality"]}"
	end
ensure
	connection.finish
end