require 'formula'

class Snort < Formula
  url 'http://www.snort.org/downloads/867'
  homepage 'http://www.snort.org/'
  md5 'a7e6f0b013f767d09c99f8f91757e355'
  version '2.9.0.5'
  depends_on 'libdnet'
  depends_on 'libdaq'

  def install
    system "./configure", "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    system "make install"
  end
end
