class Minfo < Formula
  desc "A simple tool to display macOS system information"
  homepage "https://github.com/tavril/minfo"
  version "0.8.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tavril/minfo/releases/download/v0.8.1/minfo-v0.8.1-darwin-arm64.tar.gz"
      sha256 "b6ae8e7389ebcf8ca5ff3198af4a507f331b4790ed62b11f9160958be173a6a1"
    end
    #on_intel do
    #end
  end

  def install
    # Extract the binary and move it to the bin directory
    bin.install "minfo"
    man1.install "minfo.1"
    pkgshare.install "apple"
    pkgshare.install "apple-nocolor"
    pkgetc.install "minfo.yml.sample"
  end

  test do
    # Simple test to verify installation
    assert_match "Usage", shell_output("#{bin}/minfo -h", 2)
  end
end
