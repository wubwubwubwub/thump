##About
This Ruby on Rails app was created by [Nolan Camp](mailto:nolan@nolancamp.com) to showcase Thump Recording Studios in Brooklyn, NY

##Environment

- ruby version 2.2.3
- rails v4.2.1
- Postgresql database
- Puma app server

To create/import a new database, download latest dump file and store locally as latest.dump - then run the following
```
rake db:create
pg_restore -O -d ff_development ~/path/to/latest.dump
```
This application uses Carrierwave and Minimagick, which requires the ImageMagic command-line tool to be installed locally. I recommend doing so via homebrew.

This application is hosted on Heroku and is monitored by New Relic RPM

Other Specs:
- AWS integration with S3 storage and Cloudfront CDN
- Fog
- Soundcloud gem/API integration
- ActiveAdmin administrative framework
- Sass
- Slim
- jQuery
- New Relic Ruby
