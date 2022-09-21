require 'cgi'
cgi = CGI.new

cgi.out("type" => "text/html", "charset" => "UTF-8") {
	get = cgi['goya']
}

"<html>
  <body>
	  <p>下記のボタンを押すと、譲渡先が自家消費ではないゴーヤの情報が表示されます</p>
		文字列 : #{get}
	</body>
</html>"
}