class Minfo < Formula
  desc "A simple tool to display macOS system information"
  homepage "https://github.com/tavril/minfo"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tavril/minfo/releases/download/v0.2.0/minfo-v0.2.0-darwin-arm64.tar.gz"
      sha256 "4be3b8f23cd577f4b26888f8b7fa4254618ad96bf92309326d096ad7f6418869"
    end
    on_intel do
      url "https://github.com/tavril/minfo/releases/download/v0.2.0/minfo-v0.2.0-darwin-amd64.tar.gz"
      sha256 "89c102b49fc5bce6f172a4d2abaad7b7240d7fec19387c4bf3583371064383ae"
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
