class Minfo < Formula
  desc "A simple tool to display macOS system information"
  homepage "https://github.com/tavril/minfo"
  version "0.14.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tavril/minfo/releases/download/v0.14.0/minfo-v0.14.0-darwin-arm64.tar.gz"
      sha256 "c3fcdd367a51cf0836ef4f20a5149f90f1e825ee1ca40fc0b9590fa714d2e7b7"
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
