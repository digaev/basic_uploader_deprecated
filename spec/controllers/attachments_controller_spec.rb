require 'rails_helper'

RSpec.describe AttachmentsController, type: :controller do
  before do
    @file = create :file_attachment
  end

  describe '#create' do
    it 'uploads file' do
      expect(FileAttachment).to receive(:create!)

      post :create, params: { attachment: @file.attachment }
    end

    context 'when upload succeeds' do
      before do
        allow(FileAttachment).to receive(:create!).and_return(@file)
      end

      it 'responds 201' do
        post :create
        expect(response.status).to eq(201)
      end

      it 'responds with the serialized file' do
        post :create
        expect(response.body).to eq(@file.to_json)
      end
    end
  end
end
