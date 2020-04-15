if Rails.env.production?
  CarrierWave.configure do |config|
    config.fog_credentials = {
      # Amazon S3用の設定
      :provider              => 'AWS',
      :region                => ENV['ap-northeast-1'],
      :aws_access_key_id     => ENV['AKIA4BHA225Y7OARLAXD'],
      :aws_secret_access_key => ENV['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']
    }
    config.fog_directory     =  ENV['railstutorial231469']
  end
end
