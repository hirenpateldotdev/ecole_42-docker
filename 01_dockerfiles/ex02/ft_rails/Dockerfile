#https://www.youtube.com/watch?v=a-jcTib9ZPA
FROM rails
MAINTAINER hirenpat@student.42.us.org
RUN apt-get update && apt-get upgrade -y && apt-get install nodejs -y && apt-get install sqlite3 -y && apt-get install libpq-dev -y && apt-get install build-essential -y
ONBUILD COPY app /opt/app
ONBUILD WORKDIR /opt/app
ONBUILD EXPOSE 3000
#Ask bundle to install all the gems specified in the Gemfile to your application.
ONBUILD RUN bundle install
#runs migrations for the current env that have not run yet
ONBUILD RUN rake db:migrate
#runs the db/seed.rb file
ONBUILD RUN rake db:seed
# docker build -t ft-rails:on-build .
# docker build -t ex02 .
# docker run -it --rm -p 3000:3000 ex02