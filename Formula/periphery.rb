class Periphery < Formula
  desc "Tool to identify unused Swift code"
  homepage "https://github.com/agoodkind/periphery"
  url "https://github.com/agoodkind/periphery/releases/download/3.9.11-agoodkind.1/periphery-3.9.11-agoodkind.1-macos-arm64.zip"
  version "3.9.11-agoodkind.1"
  sha256 "70636812a788f6144cca7efe874d605136c0ff342fef57f66a41ca4e0430baaa"
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
