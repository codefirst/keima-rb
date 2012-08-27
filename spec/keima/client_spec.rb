require File.dirname(__FILE__) + '/../spec_helper'

describe Keima::Client do
  context 'post' do
    before { @client = Keima::Client.new('http://localhost:3001', '503b7d29e1f85c9632000001') }
    subject { @client }
    its(:publish_url) { should == 'http://localhost:3001/publish/503b7d29e1f85c9632000001' }
    context 'data to json ' do
      subject { @client.to_json({:name => 'mzp', :message => 'Hello!'}) }
      it { should == '{"name":"mzp","message":"Hello!"}' }
    end
  end
end
