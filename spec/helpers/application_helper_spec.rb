require 'spec_helper'

describe 'ApplicationHelper' do
  include ApplicationHelper

  context "full_title" do
    context "without page_title" do
      let(:page_title) { nil }

      it "should return the base_title" do
        expect(full_title(page_title)).to eq('Ruby on Rails Tutorial Sample App')
      end
    end

    context "with a page_title" do
      let(:page_title) { 'Help' }

      it "should return the base_title and page_title" do
        expect(full_title(page_title)).to eq("Ruby on Rails Tutorial Sample App | #{page_title}")
      end
    end
  end
end
