require 'rspec'
require 'rr'
require 'yyid'


describe "YYID.new" do
  it 'creates a string' do
    expect(YYID.new).to be_a String
  end

  it 'looks like a UUID' do
    expect(YYID.new).to match /\A\w{8}-\w{4}-\w{4}-\w{4}-\w{12}\z/
  end

  it 'uses SecureRandom' do
    stub.proxy(SecureRandom).random_bytes
    YYID.new
    expect(SecureRandom).to have_received.random_bytes(16)
  end
end
