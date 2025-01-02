class Minfo < Formula
  desc "A simple tool to display macOS system information"
  homepage "https://github.com/tavril/minfo"
  version "0.11.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tavril/minfo/releases/download/v0.11.1/minfo-v0.11.1-darwin-arm64.tar.gz"
      sha256 "2c90f2af7aa5457ec93d373162da4b89c20b8d5e19abf0f87c36364e0cea45cd"
    end
    #on_intel do
    #end
  end

  def install
    bin.install "minfo"
    man1.install "minfo.1"
    pkgshare.install Dir["logos/*"]
    pkgetc.install Dir["etc/*"]
  end

  test do
    assert_match "Usage", shell_output("#{bin}/minfo -h", 2)
  end
end
