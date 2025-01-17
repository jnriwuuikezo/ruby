class String
  # call-seq:
  #   encode(dst_encoding = Encoding.default_internal, **enc_opts) -> string
  #   encode(dst_encoding, src_encoding, **enc_opts)   -> string
  #
  # Returns a copy of +self+ transcoded as determined by +dst_encoding+.
  # By default, raises an exception if +self+
  # contains an invalid byte or a character not defined in +dst_encoding+;
  # that behavior may be modified by encoding options; see below.
  #
  # With no arguments:
  #
  # - Uses the same encoding if <tt>Encoding.default_internal</tt> is +nil+
  #   (the default):
  #
  #     Encoding.default_internal # => nil
  #     s = "Ruby\x99".force_encoding('Windows-1252')
  #     s.encoding                # => #<Encoding:Windows-1252>
  #     s.bytes                   # => [82, 117, 98, 121, 153]
  #     t = s.encode              # => "Ruby\x99"
  #     t.encoding                # => #<Encoding:Windows-1252>
  #     t.bytes                   # => [82, 117, 98, 121, 226, 132, 162]
  #
  # - Otherwise, uses the encoding <tt>Encoding.default_internal</tt>:
  #
  #     Encoding.default_internal = 'UTF-8'
  #     t = s.encode              # => "Ruby™"
  #     t.encoding                # => #<Encoding:UTF-8>
  #
  # With only argument +dst_encoding+ given, uses that encoding:
  #
  #   s = "Ruby\x99".force_encoding('Windows-1252')
  #   s.encoding            # => #<Encoding:Windows-1252>
  #   t = s.encode('UTF-8') # => "Ruby™"
  #   t.encoding            # => #<Encoding:UTF-8>
  #
  # With arguments +dst_encoding+ and +src_encoding+ given,
  # interprets +self+ using +src_encoding+, encodes the new string using +dst_encoding+:
  #
  #   s = "Ruby\x99"
  #   t = s.encode('UTF-8', 'Windows-1252') # => "Ruby™"
  #   t.encoding                            # => #<Encoding:UTF-8>
  #
  # Optional keyword arguments +enc_opts+ specify encoding options;
  # see {Encoding Options}[rdoc-ref:encoding.rdoc@Encoding+Options].
  def encode(dst_encoding = Encoding.default_internal, **enc_opts)
    # Pseudo code
    Primitive.str_encode(...)
  end
end
