class Cloudman < Formula
  desc "Terminal user interface for managing Amazon EC2 instances"
  homepage "https://github.com/dutchcoders/cloudman"
  url "https://github.com/dutchcoders/cloudman/releases/download/0.1.1/cloudman-0.1.1-x86_64-apple-darwin.tar.gz"
  sha256 "15e9f06e0a2393f65c0a884849532687fb9a1ced7940f25cb74069a743387ae8"
  version "0.1.1"

  def install
    bin.install "cloudman"
  end
end
