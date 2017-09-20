Following the steps to push your R-shiny apps on Heroku:
heroku login
cd your project
heroku git:remote your app name on heroku
git init
heroku create --buildpack https://github.com/virtualstaticvoid/heroku-buildpack-r.git#heroku-16
git push heroku master
heroku open
----------------------
update your project

cd your project
heroku git:remote your app name on heroku
git init
git push heroku master
heroku open

References:
1. https://github.com/virtualstaticvoid/heroku-buildpack-r/tree/heroku-16
2. https://github.com/virtualstaticvoid/heroku-shiny-app
