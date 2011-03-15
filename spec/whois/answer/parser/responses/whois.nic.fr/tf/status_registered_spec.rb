# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/whois/answer/parser/responses/whois.nic.fr/tf/status_registered_spec.rb
#
# and regenerate the tests with the following rake task
#
#   $ rake genspec:parsers
#

require 'spec_helper'
require 'whois/answer/parser/whois.nic.fr.rb'

describe Whois::Answer::Parser::WhoisNicFr, "status_registered.expected" do

  before(:each) do
    file = fixture("responses", "whois.nic.fr/tf/status_registered.txt")
    part = Whois::Answer::Part.new(:body => File.read(file))
    @parser = klass.new(part)
  end

  context "#status" do
    it do
      @parser.status.should == :frozen
    end
  end
  context "#available?" do
    it do
      @parser.available?.should == false
    end
  end
  context "#registered?" do
    it do
      @parser.registered?.should == true
    end
  end
  context "#created_on" do
    it do
      @parser.created_on.should be_a(Time)
      @parser.created_on.should == Time.parse("2004-10-26")
    end
  end
  context "#updated_on" do
    it do
      @parser.updated_on.should be_a(Time)
      @parser.updated_on.should == Time.parse("2004-10-29")
    end
  end
  context "#expires_on" do
    it do
      lambda { @parser.expires_on }.should raise_error(Whois::PropertyNotSupported)
    end
  end
  context "#nameservers" do
    it do
      @parser.nameservers.should be_a(Array)
      @parser.nameservers.should have(3).items
      @parser.nameservers[0].should be_a(_nameserver)
      @parser.nameservers[0].name.should == "ns1.nic.fr"
      @parser.nameservers[0].ipv4.should == "192.134.4.1"
      @parser.nameservers[0].ipv6.should == "2001:660:3003:2::4:1"
      @parser.nameservers[1].should be_a(_nameserver)
      @parser.nameservers[1].name.should == "ns2.nic.fr"
      @parser.nameservers[1].ipv4.should == "192.93.0.4"
      @parser.nameservers[1].ipv6.should == "2001:660:3005:1::1:2"
      @parser.nameservers[2].should be_a(_nameserver)
      @parser.nameservers[2].name.should == "ns3.nic.fr"
      @parser.nameservers[2].ipv4.should == "192.134.0.49"
      @parser.nameservers[2].ipv6.should == "2001:660:3006:1::1:1"
    end
  end
end