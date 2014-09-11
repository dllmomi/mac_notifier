require File.expand_path(File.dirname(__FILE__) + '../../spec_helper')

describe 'MacNotifier::Notification' do
  context '.new' do
    let(:body) { 'test notification body' }
    let(:title) { 'test notification title' }
    let(:subtitle) { 'test notification subtitle' }

    subject { MacNotifier::Notification.new(body, title, subtitle) }

    it { expect(subject).to be_instance_of MacNotifier::Notification }

    shared_examples_for 'raise error' do
      specify { expect { subject }.to raise_error { ArgumentError } }
    end
    context 'with body nil' do
      let(:body) { nil }
      it_behaves_like 'raise error'
    end
    context 'with title nil' do
      let(:title) { nil }
      it_behaves_like 'raise error'
    end
    context 'with subtitle nil' do
      let(:subtitle) { nil }
      it_behaves_like 'raise error'
    end
    context 'with body ""' do
      let(:body) { '' }
      it_behaves_like 'raise error'
    end
  end
end
