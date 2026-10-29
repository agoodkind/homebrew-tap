class Periphery < Formula
  desc "Tool to identify unused Swift code"
  homepage "https://github.com/agoodkind/periphery"
  url "https://github.com/agoodkind/periphery/releases/download/3.9.2-agoodkind.1/periphery-3.9.2-agoodkind.1-macos-arm64.zip"
  version "3.9.2-agoodkind.1"
  sha256 "9627790f6d314febfd18c9a7a702c6c7a4d2501f933bf83421cfaef83a32130f"
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
