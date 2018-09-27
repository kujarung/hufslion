CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'                        # required
  config.fog_credentials = {
    provider:              'AWS',                        # required
    aws_access_key_id:     'AKIAII6JQ2PIJHB2PV7A',                        # required unless using use_iam_profile
    aws_secret_access_key: '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',                        # required unless using use_iam_profile
    region:                'ap-northeast-2',                  # optional, defaults to 'us-east-1'
  }
  config.fog_directory  = 'hellohufs'                                      # required
  config.fog_public     = true
end
