class Cloudman < Formula
  desc "Terminal user interface for managing Amazon EC2 instances"
  homepage "https://github.com/dutchcoders/cloudman"
  version "0.1.2"
  
  if OS.mac?
    url "https://github.com/dutchcoders/cloudman/releases/download/#{version}/cloudman-#{version}-x86_64-apple-darwin.tar.gz"
    sha256 "15e9f06e0a2393f65c0a884849532687fb9a1ced7940f25cb74069a743387ae8"
  elsif OS.linux?
    if Hardware:: CPU.intel?
      url "https://github.com/dutchcoders/cloudman/releases/download/#{version}/cloudman-#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5059f05282806d36885bd80bdc391fbb0f0d1b7e0faf2a78c0ec119fc307b14e"
    end
  end

  def install
    bin.install "cloudman"
  end
end
