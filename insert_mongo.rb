require 'mongo'
require 'csv'

mongo_uri = 'mongodb://heroku_fsp58p2g:2ga8p224lfv9eh59q8qr4m0ilc@ds031957.mongolab.com:31957/heroku_fsp58p2g'

begin
    client = Mongo::Client.new([ 'ds031957.mongolab.com:31957' ],:database =>'heroku_fsp58p2g',:user=>'heroku_fsp58p2g',:password=>'2ga8p224lfv9eh59q8qr4m0ilc');
    puts "connected"
    db = client.database
    db.collection_names.each{|name| puts name }
        coll_db=db.collection('university_mongo')
        
    CSV.foreach('univ_sampledb.csv', :headers => true) do |csv|
               result=coll_db.insert_one({ :seqid => csv['SEQ_ID'], :unitid => csv['UNITID'], :opeid => csv['OPEID'], :opeid6 => csv['opeid6'], :instnm => csv['INSTNM'], :city => csv['CITY'], :stabbr => csv['STABBR'], :insturl => csv['INSTURL'], :otherurl => csv['NPCURL'], :locale => csv['LOCALE']})
                      
                
        end     
        puts "insertion done"

end