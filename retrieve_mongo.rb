require 'mongo'
require 'csv'

MONGOLAB_URI: mongodb://heroku_88bm98v9:48sedvip68purs2pj36ookerri@ds053218.mongolab.com:53218/heroku_88bm98v9

begin
    client = Mongo::Client.new([ 'ds053218.mongolab.com:53218' ],:database =>'heroku_88bm98v9',:user=>'heroku_88bm98v9',:password=>'48sedvip68purs2pj36ookerri');
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
