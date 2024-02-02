class AppleIrControl < Formula
  desc "Tool to control the Apple IR receiver on macOS"
  homepage "https://github.com/prestonw/apple-ir-control"
  url "https://github.com/prestonw/apple-ir-control/archive/refs/tags/v0.9.9.tar.gz"
  sha256 "574a6e85e072b5fc56820c3ca750261c0dedc9d09792d4fd3541be4cee603559"

  def install
    system "make"
    bin.install "apple-ir-control"
  end

  test do
    system "#{bin}/apple-ir-control", "--version"
  end

  def caveats
    <<~EOS
      Command Line Tools for Xcode must be installed. You can install them with:
      
      xcode-select --install
      
      This is necessary for compilation.
    EOS
  end
end
