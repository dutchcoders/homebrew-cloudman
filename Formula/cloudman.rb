class Cloudman < Formula
  desc "Terminal user interface for managing Amazon EC2 instances"
  homepage "https://github.com/dutchcoders/cloudman"
  version "0.1.6"
  
  if OS.mac?
    url "https://github.com/dutchcoders/cloudman/releases/download/#{version}/cloudman-#{version}-x86_64-apple-darwin.tar.gz"
    sha256 "06032d301a3980e734739831a18f1bf7405c59a2f63be561e1ec262074d89e47"
  elsif OS.linux?
    if Hardware:: CPU.intel?
      url "https://github.com/dutchcoders/cloudman/releases/download/#{version}/cloudman-#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "798bf16e9530f1201c8db678f4e702cd3c5c81a25e14f49b99667edc2f0f67a9"
    end
  end

  def install
    bin.install "cloudman"
  end
end
