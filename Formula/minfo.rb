class Minfo < Formula
  desc "A simple tool to display macOS system information"
  homepage "https://github.com/tavril/minfo"
  version "0.10.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tavril/minfo/releases/download/v0.10.2/minfo-v0.10.2-darwin-arm64.tar.gz"
      sha256 "1c76953326578072861a3ad736f965109788771ef3b75cbdd59a882f779cfc49"
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
