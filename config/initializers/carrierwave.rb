# config/initializers/carrierwave.rb
CarrierWave.configure do |config|
  if Rails.env.development?
    config.cache_dir = '/home/vagrant/uploads_tmp/tmp/uploads'
    config.root = '/home/vagrant/uploads_tmp/tmp'
  end

  config.storage    = :aws
  config.aws_bucket = ENV["AWS_BUCKET"]
  config.aws_acl    = "public-read"

  config.aws_credentials = {
      access_key_id:     ENV["AWS_ACCESS_KEY"],
      secret_access_key: ENV["AWS_SECRET_KEY"],
      region:            ENV["AWS_REGION"]
  }
end









  # config.storage    = :aws
  # config.aws_bucket = ENV["jayflixterapp"]
  # config.aws_acl    = "public-read"

  # config.aws_credentials = {
  #     access_key_id:     ENV["AKIAY5K6FQXHM5EAZCGQY"],
  #     secret_access_key: ENV["8c/1kefzY8pC5IdsXvLbV43O/9DBoD1J8PlC52NN"],
  #     region:            ENV["AWS_REGION"]
  # }



  # config.fog_provider = 'fog/aws'                        # required
  # config.fog_public = false
  # config.fog_credentials = {
  #   provider:              'AWS',                        # required
  #   aws_access_key_id:     ENV["AKIAY5K6FQXHM5EAZCGQY"],        # required
  #   aws_secret_access_key: ENV["8c/1kefzY8pC5IdsXvLbV43O/9DBoD1J8PlC52NN"],        # required
  # }
  # config.fog_directory  = ENV["jayflixterapp"]              # required
