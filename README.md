#### cse5335-sxv0500-3
=========================
#####Name: Samyukta Vuyyuru
----------------------------
#####UTA id: 1001110500
------------------------
#####website: https://cse-sxv0500-3.herokuapp.com/
----------------------------------------------------

####### Server side framework

     Rails

####### NoSQL database

     MongoLab-Heroku

#####1.Easy implementations

     The part of the programming project which did not have any difficulties were:
     *Loading the data into the MongoLabs in Heroku from an external csv file.
     *Creating the framework for the implementation on rails server using ruby with the MVC model.
     *Rendering data from the MongoLab to the browser side using json as this was similar to the first project where that was rendering using json data.

#####2.Difficult Implementations

     The part of the project which possesed difficulty at the time of implementation was:
     *Using rails framework and ruby on windows8.1 OS, there was trouble with the javascript and jquery  turbolinks in the rails version 4.2.3. There were overriding inbuilt jquery scripts which were making the jquery script inactive.
     *Calling 100 records with multiple AJAX request with 0.5s time interval. Ths was producing random records from the database and sometimes repeating ambigiously. The request is responding very slow after the button click. This was due to the call and retrieve time conflicts and server load.

#####3. Usage of technologies professionally

     Using these technologies professionally definitely is suggestible for the reasons that these technologies are more developer friendly and gives open opportunities to a lot of learning.
     The challeneges of using them professionally, firstly is the compatibility and time constrains in using them with different operating systems. The installation and development procedures slightly differ for each OS and a lot of time consumes in setting up the frameworks and installations.
     Secondly, limited help from the articles, tutorials and blogs. Since these are developing technologies, new issues keep arising and sometimes it is difficult to find the root cause.
 
#####4. Commands to upload and run project 

     *Github repository
      git init
      echo "# cse5335-sxv0500-3" >> README.md
      git add .
      git commit -m "Final Commit"
      git remote add origin https://github.com/Samyukta1189/cse5335-sxv0500-3.git
      git push -u origin master
     
     *heroku commands
      heroku login
      git clone https://github.com/Samyukta1189/cse5335-sxv0500-3.git
      cd cse5335-sxv0500-3
      heroku create cse-sxv0500-3
      git push heroku master
