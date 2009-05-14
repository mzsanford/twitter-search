require File.expand_path('../lib/twitter_search', File.dirname(__FILE__))
require 'test/unit'
require 'rubygems'
require 'shoulda'
require 'yaml'

class Test::Unit::TestCase
  
  def self.should_have_default_search_behaviors
    should_find_tweets
    should_have_text_for_all_tweets
    should_return_page 1
    should_return_tweets_in_sets_of 15
  end
  
  def self.should_find_tweets
    should 'find tweets' do
      assert @tweets.any?
    end
  end
  
  def self.should_have_text_for_all_tweets
    should 'have text for all tweets' do
      assert @tweets.all? { |tweet| tweet.text.size > 0 }
    end
  end
  
  def self.should_return_page(number)
    should "return page #{number}" do
      assert_equal number, @tweets.page
    end
  end
  
  def self.should_return_tweets_in_sets_of(number)
    should "return tweets in sets of #{number}" do
      assert_equal number, @tweets.results_per_page
    end
  end
  
  def read_yaml(opts = {})
    return if opts[:file].nil?
    YAML.load_file File.join(File.dirname(__FILE__), 'yaml', "#{opts[:file]}.yaml") 
  end
  
end