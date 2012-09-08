require File.dirname(__FILE__) + '/../spec_helper'

describe Keima::Client do

  base_url = 'http://localhost:3001'

  context "when base url is #{base_url}" do
    before { @client = Keima::Client.new(base_url, '503b7d29e1f85c9632000001') }
    context 'post' do
      subject { @client }
      its(:publish_url) { should == 'http://localhost:3001/publish/503b7d29e1f85c9632000001' }
    end

    context 'js files' do
      subject { @client }
      its(:jsFiles) {
        should == ['http://localhost:3001/socket.io/socket.io.js', 'http://localhost:3001/javascripts/keima.js']
      }
    end
  end
end
