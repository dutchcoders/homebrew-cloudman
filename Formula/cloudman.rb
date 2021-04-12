class Cloudman < Formula
  desc "Terminal user interface for managing Amazon EC2 instances"
  homepage "https://github.com/dutchcoders/cloudman"
  version "0.1.7"
  
  if OS.mac?
    url "https://github.com/dutchcoders/cloudman/releases/download/#{version}/cloudman-#{version}-x86_64-apple-darwin.tar.gz"
    sha256 "9f6736f12356e14272675d8fb53f6d481717f646c56c8be31f9752c80ff8b321"
  elsif OS.linux?
    if Hardware:: CPU.intel?
      url "https://github.com/dutchcoders/cloudman/releases/download/#{version}/cloudman-#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f287a743450ecc8bcfdbaff5410f811a9c050f8e945a7e7ec46000609289b6a4"
    end
  end

  def install
    bin.install "cloudman"
  end
end
