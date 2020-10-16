# This file was generated by GoReleaser. DO NOT EDIT.
require_relative "custom_download_strategy"
class Bit < Formula
  desc "A modern git CLI"
  homepage "https://github.com/chriswalz/bit"
  version "0.6.10"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/chriswalz/bit/releases/download/v0.6.10/bit_0.6.10_Darwin_x86_64.tar.gz", :using => CurlDownloadStrategy.
    sha256 "ec20189c4123d479e2ffb11405947deb20c92f7919dad72715bb0ea0e1501dbf"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/chriswalz/bit/releases/download/v0.6.10/bit_0.6.10_Linux_x86_64.tar.gz", :using => CurlDownloadStrategy.
      sha256 "78dddc39575bf00a637ea20ee8b4ee24cc91baf03acdb74388a768474ed05146"
    end
  end

  def install
    bin.install "bit"
  end

  test do
    system "#{bin}/program --version"
  end
end
