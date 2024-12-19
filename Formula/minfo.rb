class Minfo < Formula
  desc "A simple tool to display macOS system information"
  homepage "https://github.com/tavril/minfo"
  version "0.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tavril/minfo/releases/download/v0.3.1/minfo-v0.3.1-darwin-arm64.tar.gz"
      sha256 "9e177f90ee90b654c662e6024d515f1f4a31cdac7a7f9d4915a61f8a738ff24a"
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
