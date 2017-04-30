CarrierWave.configure do |config|
  config.fog_credentials = {
    provider:              'AWS',                        # required
    aws_access_key_id:     'xxx',                        # required
    aws_secret_access_key: 'yyy',                        # required
    region:                'eu-west-1',                  # optional, defaults to 'us-east-1'
    endpoint:              'https://s3.example.com:8080' # optional, defaults to nil
  }
  config.fog_directory  = 'name_of_directory'                          # required
end