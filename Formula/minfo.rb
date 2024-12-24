class Minfo < Formula
  desc "A simple tool to display macOS system information"
  homepage "https://github.com/tavril/minfo"
  version "0.8.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tavril/minfo/releases/download/v0.8.0/minfo-v0.8.0-darwin-arm64.tar.gz"
      sha256 "39ddb3bcf732ff78561b607524877cf520f795f6f8bf01ba490b39b0e30cc3e9"
    end
    #on_intel do
    #end
  end

  def install
    # Extract the binary and move it to the bin directory
    bin.install "minfo"
    man1.install "minfo.1"
  end

  test do
    # Simple test to verify installation
    assert_match "Usage", shell_output("#{bin}/minfo -h", 2)
  end
end
