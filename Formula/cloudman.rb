class Cloudman < Formula
  desc "Terminal user interface for managing Amazon EC2 instances"
  homepage "https://github.com/dutchcoders/cloudman"
  version "0.1.5"
  
  if OS.mac?
    url "https://github.com/dutchcoders/cloudman/releases/download/#{version}/cloudman-#{version}-x86_64-apple-darwin.tar.gz"
    sha256 "0e732eeeb71efb5fd0cca68704192d20533cbb6200515380846bd055354eaccb"
  elsif OS.linux?
    if Hardware:: CPU.intel?
      url "https://github.com/dutchcoders/cloudman/releases/download/#{version}/cloudman-#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "da58f42a31d4b1d9d96ee2421f67c2db3657a9e22e602e0de3d9e76d20ffa964"
    end
  end

  def install
    bin.install "cloudman"
  end
end
