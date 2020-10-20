# This file was generated by GoReleaser. DO NOT EDIT.
class Bit < Formula
  desc "A modern git CLI"
  homepage "https://github.com/chriswalz/bit"
  version "0.7.7"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/chriswalz/bit/releases/download/v0.7.7/bit_0.7.7_darwin_amd64.tar.gz", :using => CurlDownloadStrategy.
    sha256 "84c4d2916e4fb23ab5a8767186dfb1561e437e2d857f7bdba9b0550996c21b93"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/chriswalz/bit/releases/download/v0.7.7/bit_0.7.7_linux_amd64.tar.gz", :using => CurlDownloadStrategy.
      sha256 "d75e4e54daaa80056d8f9a1d3fb1d308b08a0abd88082216cfdb8d8286ee131d"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/chriswalz/bit/releases/download/v0.7.7/bit_0.7.7_linux_arm64.tar.gz", :using => CurlDownloadStrategy.
        sha256 "e0b4aeb7620c522381e6eb42e561cf31265c3873cc14c0b36f9ab6134ead6e7d"
      else
      end
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
