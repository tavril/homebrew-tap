class Minfo < Formula
  desc "A simple tool to display macOS system information"
  homepage "https://github.com/tavril/minfo"
  version "0.13.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tavril/minfo/releases/download/v0.13.3/minfo-v0.13.3-darwin-arm64.tar.gz"
      sha256 "3f2c80f7a65dbd7a518c7e213a754215a3017e2705efd1c0c999e9d49a214dee"
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
