require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe 'MacNotifier' do
  let(:notification) { MacNotifier::Notification.new(body, title, subtitle) }
  describe '.notify' do
    let(:body) { 'test notification body' }
    let(:title) { 'test notification title' }
    let(:subtitle) { 'test notification subtitle' }

    subject { MacNotifier.notify(notification) }

    it { expect(subject).to be true }
  end
  describe '.notify_with_voice' do
    let(:body) { 'test notification body' }
    let(:title) { 'test notification title' }
    let(:subtitle) { 'test notification subtitle' }

    subject { MacNotifier.notify_with_voice(notification) }

    it { expect(subject).to be true }
  end
end
