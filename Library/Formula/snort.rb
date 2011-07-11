require 'formula'

class Snort < Formula
  url 'http://www.snort.org/downloads/867'
  homepage 'http://www.snort.org/'
  md5 'a7e6f0b013f767d09c99f8f91757e355'
  version '2.9.0.5'
  depends_on 'libdnet'
  depends_on 'libdaq'

  def install
    system "./configure",
           "--prefix=#{prefix}",
           "--enable-ipv6",
           "--enable-zlib",
           "--enable-gre",
           "--enable-mpls",
           "--enable-targetbased",
           "--enable-decoder-preprocessor-rules",
           "--enable-ppm",
           "--enable-perfprofiling",
           "--enable-inline-init-failopen",
           "--enable-pthread",
           "--enable-ppm-test",
           "--enable-sourcefire",
           "--enable-active-response",
           "--enable-normalizer",
           "--enable-reload",
           "--enable-reload-error-restart",
           "--enable-react",
           "--enable-flexresp3",
           "--enable-aruba"

    system "make install"
  end
end
