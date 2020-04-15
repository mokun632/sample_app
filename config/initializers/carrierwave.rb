if Rails.env.production?
  CarrierWave.configure do |config|
    config.fog_credentials = {
      # Amazon S3用の設定
      :provider              => 'AWS',
      :region                => ENV['ap-northeast-1'],
      :aws_access_key_id     => ENV['ACCESS_KEY_ID'],
      :aws_secret_access_key => ENV['SECRET_ACCESS_KEY']
    }
    config.fog_directory     =  ENV['railstutorial231469']
  end
end
