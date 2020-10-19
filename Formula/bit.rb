# This file was generated by GoReleaser. DO NOT EDIT.
class Bit < Formula
  desc "A modern git CLI"
  homepage "https://github.com/chriswalz/bit"
  version "0.6.14"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/chriswalz/bit/releases/download/v0.6.14/bit_0.6.14_Darwin_x86_64.tar.gz", :using => CurlDownloadStrategy.
    sha256 "2150d06d867482a62bebfb85c86252ed97d7ad8d8e5c313af578b06b8f2375fa"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/chriswalz/bit/releases/download/v0.6.14/bit_0.6.14_Linux_x86_64.tar.gz", :using => CurlDownloadStrategy.
      sha256 "6cef74fc855045bb2808bdf33b03902e10b81d38a6405aa1a4799c38bbc517e3"
    end
  end

  def install
    bin.install "bit"
  end

  test do
    system "#{bin}/program --version"
    ...
  end
end
