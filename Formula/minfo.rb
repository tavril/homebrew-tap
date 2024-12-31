class Minfo < Formula
  desc "A simple tool to display macOS system information"
  homepage "https://github.com/tavril/minfo"
  version "0.9.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tavril/minfo/releases/download/v0.9.0/minfo-v0.9.0-darwin-arm64.tar.gz"
      sha256 "fda1ac4532b6d251b9a1523b87b02d07207f83d4fec28a23cf1b312196f6880b"
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
