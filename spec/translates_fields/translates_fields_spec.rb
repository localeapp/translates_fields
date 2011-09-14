require 'spec_helper'
require 'fixtures/my_model'

describe TranslatesFields do
  it "gets included into ActiveRecord::Base" do
    ActiveRecord::Base.should include(TranslatesFields)
  end
end

describe TranslatesFields, 'translates(field)' do
  it "serializes the field" do
    MyModel.serialized_attributes.should have_key('body')
  end
end

describe TranslatesFields, 'field=(scope, options)' do
  let(:my_model) { MyModel.new }

  it "sets the field to the key name" do
    body = lambda { my_model.read_attribute(:body) }
    expect { my_model.body = :key }.to change(body, :call).to([:key, {}])
  end

  it "sets the field to the key name and options" do
    body = lambda { my_model.read_attribute(:body) }
    expect { my_model.body = :key, {:foo => 'bar'} }.to change(body, :call).to([:key, {:foo => 'bar'}])
  end
end

describe TranslatesFields, 'fields' do
  it "returns a translated string based on the current scope" do
    I18n.should_receive(:translate).with(:'models.my_model.attributes.body.key', {:foo => 'bar'})
    MyModel.new(:body => [:key, {:foo => 'bar'}]).body
  end

  it "returns an empty string when the field is empty" do
    MyModel.new.body.should == ''
  end
end