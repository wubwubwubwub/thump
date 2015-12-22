require 'fog'

CarrierWave.configure do |config|
  config.fog_credentials = {
    # Configuration for Amazon S3 should be made available through an Environment variable.
    # For local installations, export the env variable through the shell OR
    # if using Passenger, set an Apache environment variable.
    #
    # In Heroku, follow http://devcenter.heroku.com/articles/config-vars
    #
    # $ heroku config:add S3_KEY=your_s3_access_key S3_SECRET=your_s3_secret S3_REGION=eu-west-1 S3_ASSET_URL=http://assets.example.com/ S3_BUCKET_NAME=s3_bucket/folder
 
    # Configuration for Amazon S3
    :provider              => 'AWS',
    :aws_access_key_id     => ENV['AWS_KEY'],
    :aws_secret_access_key => ENV['AWS_SECRET'],
    :region                => ENV['AWS_REGION']
  }
 
  # For testing, upload files to local `tmp` folder.
  if Rails.env.development?
    config.storage = :file
    # config.enable_processing = false
    config.root = "#{Rails.root}/tmp"
  else
    config.asset_host = ENV['FOG_CDN']
    config.storage = :fog
  end
 
  config.cache_dir = "#{Rails.root}/tmp/uploads"                  # To let CarrierWave work on heroku
 
  config.fog_directory    = 'thump-bucket'
end
