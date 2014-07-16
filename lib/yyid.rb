require 'securerandom'


module YYID
  VERSION = "4"

  # https://github.com/ruby/ruby/blob/v2_1_2/lib/securerandom.rb#L241-L246
  def self.new
    "%08x-%04x-%04x-%04x-%04x%08x" % SecureRandom.random_bytes(16).unpack("NnnnnN")
  end
end
