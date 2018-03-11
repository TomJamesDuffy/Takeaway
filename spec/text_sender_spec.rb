require 'text_sender'

describe TextSender do
  subject(:textsender) {TextSender.new(nil, nil)}

  describe '#send_text' do
    it { is_expected.to respond_to(:send_text).with(1).arguments }
    it 'sends a confirmation and returns true if successful' do
      message = double
      client = double(messages: message)
      client_class = double(new: client)
      expect(message).to receive(:create)
      subject.send_text(client_class)
    end
  end
end 
