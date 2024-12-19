class Minfo < Formula
  desc "A simple tool to display macOS system information"
  homepage "https://github.com/tavril/minfo"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tavril/minfo/releases/download/v0.1.1/minfo-v0.1.1-darwin-arm64.tar.gz"
      sha256 "b3d260dd1144e56f3c747be922b1db86ba193770fbd556eb5125f8f111cba35f"
    end
    on_intel do
      url "https://github.com/tavril/minfo/releases/download/v0.1.1/minfo-v0.1.1-darwin-amd64.tar.gz"
      sha256 "b55225a86ef37b3d9955c82cfedd6b28d19727dcc05423baae691dc5f6a043ae"
    end
  end

  def install
    # Extract the binary and move it to the bin directory
    bin.install "minfo"
  end

  test do
    # Simple test to verify installation
    assert_match "Usage", shell_output("#{bin}/minfo -h", 2)
  end
end
