class Periphery < Formula
  desc "Tool to identify unused Swift code"
  homepage "https://github.com/agoodkind/periphery"
  url "https://github.com/agoodkind/periphery/releases/download/3.9.7-agoodkind.1/periphery-3.9.7-agoodkind.1-macos-arm64.zip"
  version "3.9.7-agoodkind.1"
  sha256 "2d8e8196bf4201e264ec7f913144ba187ec66cd80c08d94b60432c7261b51ce0"
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
