class DisplayController < ApplicationController
  def list

company=[{'firstname'=>'Samyukta','lastname'=>'Vuyyuru','age'=>'25','address'=>'Arlington','contact'=>'682-583-3300','socialsite'=>'http://www.facebook.com'},
{'firstname'=>'Sam','lastname'=>'V','age'=>'92','address'=>'Dallas','contact'=>'682-583-3300','socialsite'=>'http://www.facebook.com'},
{'firstname'=>'Shweta','lastname'=>'Gaikaiwari','age'=>'25','address'=>'Chennai','contact'=>'9952587070','socialsite'=>'http://www.fac.com'},
{'firstname'=>'Samyukta','lastname'=>'Vuyyuru','age'=>'25','address'=>'Arlington','contact'=>'682-583-3300','socialsite'=>'http://www.LinkedIn.com'},
{'firstname'=>'Jack','lastname'=>'Ranger','age'=>'20','address'=>'Paris','contact'=>'613-896-6789','socialsite'=>'http://www.facebook.com'},
{'firstname'=>'Jill','lastname'=>'Copell','age'=>'35','address'=>'Detroit','contact'=>'676-938-8935','socialsite'=>'http://www.google.com'},
{'firstname'=>'Jamie','lastname'=>'Rim','age'=>'23','address'=>'India','contact'=>'682-583-3300','socialsite'=>'http://www.twitter.com'},
{'firstname'=>'Perry','lastname'=>'Morgan','age'=>'40','address'=>'New york','contact'=>'682-583-3300','socialsite'=>'http://www.github.com'},
{'firstname'=>'Sandeep','lastname'=>'Vuyyuru','age'=>'21','address'=>'HYderabad','contact'=>'986723466','socialsite'=>'http://www.instagram.com'},
{'firstname'=>'Samyukta','lastname'=>'Vuyyuru','age'=>'25','address'=>'Arlington','contact'=>'682-583-3300','socialsite'=>'http://www.facebook.com'}

]

render json: company  
end
end
