require 'mongo'
require 'csv'

mongo_uri = 'mongodb://heroku_88bm98v9:48sedvip68purs2pj36ookerri@ds053218.mongolab.com:53218/heroku_88bm98v9'

begin
    client = Mongo::Client.new([ 'ds053218.mongolab.com:53218' ],:database =>'heroku_88bm98v9',:user=>'heroku_88bm98v9',:password=>'48sedvip68purs2pj36ookerri');
    puts "connected"
    db = client.database
    db.collection_names.each{|name| puts name }
        coll_db=db.collection('university_mongo')
        
    CSV.foreach('univ_sampledb.csv', :headers => true) do |csv|
               result=coll_db.insert_one({ :seqid => csv['SEQ_ID'], :unitid => csv['UNITID'], :opeid => csv['OPEID'], :opeid6 => csv['opeid6'], :instnm => csv['INSTNM'], :city => csv['CITY'], :stabbr => csv['STABBR'], :insturl => csv['INSTURL'], :otherurl => csv['NPCURL'], :locale => csv['LOCALE']})
                      
                
        end     
        puts "insertion done"

end