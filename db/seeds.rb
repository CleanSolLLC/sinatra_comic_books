
User.create(username: "GIJane", email: "GIJane@abc123.com", password: "GIJane@abc123.com") 

Comic.create(publisher: "Marvel Comics Group", year: "1980", issue_num: "36", cover_price: "$.40",
	title: "Star Wars", subtitle: "Red Queen Rising", condition: "good",
	html_link_to_dealer: "https://www.mycomicshop.com/search?minyr=1980&maxyr=1980&minyrmo=198006&TID=178101",
	user_id: "1")

Comic.create(publisher: "Marvel Comics Group", year: "1978", issue_num: "18", cover_price: "$.35",
	title: "Star Wars", subtitle: "The Empire Strikes Back", condition: "good",
	html_link_to_dealer: "https://www.mycomicshop.com/search?minyr=1970&maxyr=1979&TID=178101",
	user_id: "1")

Comic.create(publisher: "Marvel Comics Group", year: "1980", issue_num: "36", cover_price: "$.35",
	title: "Star Wars", subtitle: "Crucible!", condition: "good",
	html_link_to_dealer: "https://www.mycomicshop.com/search?minyr=1970&maxyr=1979&TID=178101",
	user_id: "1")
