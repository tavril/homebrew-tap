class Minfo < Formula
  desc "A simple tool to display macOS system information"
  homepage "https://github.com/tavril/minfo"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tavril/minfo/releases/download/v0.3.0/minfo-v0.3.0-darwin-arm64.tar.gz"
      sha256 "56714052c8ddc33f3a2ac9f203df72351998297d19c0879e0d971db7c9456eec"
    end
    # Until x86_64 support is added
    #on_intel do
      #url "https://github.com/tavril/minfo/releases/download/v0.3.0/minfo-v0.3.0-darwin-amd64.tar.gz"
      #sha256 "7fd2d4164c8d8718bf9e3fa9a807fcd02a603886ca0536e4fea88f14dd9ff5da"
    #end
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
