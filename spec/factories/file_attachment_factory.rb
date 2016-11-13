FactoryGirl.define do
  factory :file_attachment do
    attachment do
      Rack::Test::UploadedFile.new(
        File.join(Rails.root, 'spec', 'fixtures', 'files', 'file.txt')
      )
    end
  end
end
