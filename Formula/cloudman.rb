class Cloudman < Formula
  desc "Terminal user interface for managing Amazon EC2 instances"
  homepage "https://github.com/dutchcoders/cloudman"
  version "0.1.4"
  
  if OS.mac?
    url "https://github.com/dutchcoders/cloudman/releases/download/#{version}/cloudman-#{version}-x86_64-apple-darwin.tar.gz"
    sha256 "c3fbb9c8c7e086050d32c7a1db2a32cd86cf1238b33cfe581fb45d65133f7bb8"
  elsif OS.linux?
    if Hardware:: CPU.intel?
      url "https://github.com/dutchcoders/cloudman/releases/download/#{version}/cloudman-#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2e17185c7226d690cba5eb976b2f8e3a7ffcc444d460a0b1e606d2f518e3a142"
    end
  end

  def install
    bin.install "cloudman"
  end
end
