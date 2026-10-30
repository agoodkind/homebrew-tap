class Periphery < Formula
  desc "Tool to identify unused Swift code"
  homepage "https://github.com/agoodkind/periphery"
  url "https://github.com/agoodkind/periphery/releases/download/3.9.8-agoodkind.1/periphery-3.9.8-agoodkind.1-macos-arm64.zip"
  version "3.9.8-agoodkind.1"
  sha256 "e2c5c853d6447d7db5e1705c43e3b896922e347e665b56b57f05e25008946d96"
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
