require 'rails_helper'
require 'carrierwave/test/matchers'

describe AttachmentUploader do
  include CarrierWave::Test::Matchers

  let(:attach) { double('file_attachment') }
  let(:uploader) { AttachmentUploader.new(attach, :attachment) }
  let(:filename) { "#{Rails.root}/spec/fixtures/files/file.txt" }

  before do
    File.open(filename) { |f| uploader.store!(f) }
  end

  after do
    uploader.remove!
  end

  it 'should store files in /public/uploads directory' do
    expect(File.dirname(uploader.path)).to eq("#{Rails.root}/public/uploads")
  end
end
