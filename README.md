# R-shiny apps push on heroku

Following the steps to push your R-shiny apps on Heroku:
1. heroku login
2. cd  your project
2. create your apps' name
3. heroku git:remote -a your app name on heroku
4. git init
5. heroku create --buildpack https://github.com/virtualstaticvoid/heroku-buildpack-r.git#heroku-16
6. git push heroku master
7. heroku open

update your project

1. cd your project
2. heroku git:remote your app name on heroku
3. git init
4. git push heroku master
5. heroku open

References:
1. https://github.com/virtualstaticvoid/heroku-buildpack-r/tree/heroku-16
2. https://github.com/virtualstaticvoid/heroku-shiny-app
