class Minfo < Formula
  desc "A simple tool to display macOS system information"
  homepage "https://github.com/tavril/minfo"
  version "0.5.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tavril/minfo/releases/download/v0.5.1/minfo-v0.5.1-darwin-arm64.tar.gz"
      sha256 "a276f879d9b698e637bab884d614833e99503baeb4bfe987bc78a1c9559f3488"
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
