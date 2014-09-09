require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe 'MacNotifier' do
  context '.notify' do
    let(:body) { 'test notification body' }
    let(:title) { 'test notification title' }
    let(:subtitle) { 'test notification subtitle' }

    subject { MacNotifier.notify(body, title: title, subtitle: subtitle) }

    it { expect(subject).to be true }
  end
  context '.notify_with_voice' do
    let(:body) { 'test notification body' }
    let(:title) { 'test notification title' }
    let(:subtitle) { 'test notification subtitle' }

    subject { MacNotifier.notify_with_voice(body, title: title, subtitle: subtitle) }

    it { expect(subject).to be true }
  end
end
