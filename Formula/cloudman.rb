class Cloudman < Formula
  desc "Terminal user interface for managing Amazon EC2 instances"
  homepage "https://github.com/dutchcoders/cloudman"
  version "0.1.3"
  
  if OS.mac?
    url "https://github.com/dutchcoders/cloudman/releases/download/#{version}/cloudman-#{version}-x86_64-apple-darwin.tar.gz"
    sha256 "cfc5526ff044b0c59a580b912da3b54bbe5b16d6103f1d9bb205ccdaafda80c4"
  elsif OS.linux?
    if Hardware:: CPU.intel?
      url "https://github.com/dutchcoders/cloudman/releases/download/#{version}/cloudman-#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3d5f8254dfa0ee24f4abe7167f4ed6f5e0b1854ac401d77325659322ab55be13"
    end
  end

  def install
    bin.install "cloudman"
  end
end
