class Periphery < Formula
  desc "Tool to identify unused Swift code"
  homepage "https://github.com/agoodkind/periphery"
  url "https://github.com/agoodkind/periphery/releases/download/3.8.0-agoodkind.6/periphery-3.8.0-agoodkind.6-macos-arm64.zip"
  version "3.8.0-agoodkind.6"
  sha256 "7e08e9cea2aa7abf71a2813b129ea84f6e5bd161ab5f22a52745e909f739ddfb"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos

  def install
    libexec.install "periphery", "libIndexStore.dylib"
    bin.install_symlink libexec/"periphery"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/periphery version")
  end
end
