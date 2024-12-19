class Minfo < Formula
  desc "A simple tool to display macOS system information"
  homepage "https://github.com/tavril/minfo"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tavril/minfo/releases/download/v0.1.0/minfo-v0.1.0-darwin-arm64.tar.gz"
      sha256 "7b3fade6e11e6f399ed1ac9b6c4bd24d4233fb9798300240d589a530a452ab70"
    end
    on_intel do
      url "https://github.com/tavril/minfo/releases/download/v0.1.0/minfo-v0.1.0-darwin-amd64.tar.gz"
      sha256 "46a92ed7880f9d30959ffe23ae37edec8d7ecb7bb98c5d3dbc2967a2be6a7769"
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
