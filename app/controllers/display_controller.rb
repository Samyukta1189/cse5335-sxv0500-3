require 'mongo'
require 'json'

class DisplayController < ApplicationController
  def list
  
  
  client = Mongo::Client.new([ 'ds053218.mongolab.com:53218' ],:database =>'heroku_88bm98v9',:user=>'heroku_88bm98v9',:password=>'48sedvip68purs2pj36ookerri');
  db=client.database
  coll_db=db.collection('university_mongo');
  @result=coll_db.find({ :seqid =>params[:j]});
  
  #puts param[:j];
  #if unless @result.nil? or @result == 0
		puts "The records are :\n"
		@result.each do |temp|
		seqID=temp['seqid']
		unitID=temp['unitid']
		opeID=temp['opeid']
		opeID6=temp['opeid6']
		instName=temp['instnm']
		city=temp['city']
		state=temp['stabbr']
		instURL=temp['insturl']	
		otherURL=temp['npcurl']
		locale=temp['locale']
 		puts  "#{seqID} -- #{unitID} -- #{opeID} -- #{opeID6} -- #{instName} -- #{city} -- #{state} -- #{instURL} -- #{otherURL} -- #{locale}"
	    
         
   #end 
   end

render json: @result 
end
end
