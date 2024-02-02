class AppleIrControl < Formula
  desc "Tool to control the Apple IR receiver on macOS"
  homepage "https://github.com/prestonw/apple-ir-control"
  url "https://github.com/prestonw/apple-ir-control/archive/refs/tags/v0.9.9.tar.gz"
  sha256 "6e4ea963adcfa97ceb40a66d9a983f61ef081b686635e0b2519a13f495311482"

  # Removed the depends_on :xcode => :build line

  def install
    system "make"
    bin.install "apple-ir-control"
  end

  test do
    system "#{bin}/apple-ir-control", "--version"
  end
end
