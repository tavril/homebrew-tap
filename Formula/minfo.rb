class Minfo < Formula
  desc "A simple tool to display macOS system information"
  homepage "https://github.com/tavril/minfo"
  version "0.6.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tavril/minfo/releases/download/v0.6.1/minfo-v0.6.1-darwin-arm64.tar.gz"
      sha256 "f49a53425a99a478110db823158e157b753d54299b026620b2f40e7db7eb556e"
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
