require 'mongo'
require 'csv'

MONGOLAB_URI: mongodb://heroku_fsp58p2g:2ga8p224lfv9eh59q8qr4m0ilc@ds031957.mongolab.com:31957/heroku_fsp58p2g

begin
    client = Mongo::Client.new([ 'ds031957.mongolab.com:31957' ],:database =>'heroku_fsp58p2g',:user=>'heroku_fsp58p2g',:password=>'2ga8p224lfv9eh59q8qr4m0ilc');
    puts "Connected to Mongodb"
	puts "Enter a primary key for university_mongo database [UNITID]"
	key = gets
	if(key.strip! == nil)
	key_value=key
	else
	key_value=key
	end
	
    db = client.database

        coll_db=db.collection('university_mongo')
		result=coll_db.find({ :unitid =>key_value})
		
		 puts "The key results are :\n"
    	    puts "UNITID -- OPEID -- opeid6 -- INSTNM -- CITY -- STABBR -- INSTURL -- NPCURL -- LOCALE"
	    result.each do |temp|
		unitID=temp['unitid']
		opeID=temp['opeid']
		opeID6=temp['opeid6']
		instName=temp['instnm']
		city=temp['city']
		state=temp['stabbr']
		instURL=temp['insturl']	
		otherURL=temp['npcurl']
		locale=temp['locale']
 		puts  "#{unitID} -- #{opeID} -- #{opeID6} -- #{instName} -- #{city} -- #{state} -- #{instURL} -- #{otherURL} -- #{locale}"
	    
	  end  
    
  
    puts 'Connection closed'
end
