class Cloudman < Formula
  desc "Terminal user interface for managing Amazon EC2 instances"
  homepage "https://github.com/dutchcoders/cloudman"
  url "https://github.com/dutchcoders/cloudman/releases/download/0.1.0/cloudman-0.1.0-x86_64-apple-darwin.tar.gz"
  sha256 "3db60d5f87cf6a6f64f78c827e08611cda7433bbc92b4f4054f3dbdc5b4e171c"
  version "0.1.0"

  def install
    bin.install "cloudman"
  end
end
