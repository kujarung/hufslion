CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'                        # required
  config.fog_credentials = {
    provider:              'AWS',                        # required
    aws_access_key_id:     'AKIAJBA3NLM7SDNVIN3Q',                        # required unless using use_iam_profile
    aws_secret_access_key: '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',                        # required unless using use_iam_profile
    region:                'ap-northeast-2',                  # optional, defaults to 'us-east-1'
  }
  config.fog_directory  = 'hufslikelion'                                      # required
  config.fog_public     = true
end
