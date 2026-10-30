class Periphery < Formula
  desc "Tool to identify unused Swift code"
  homepage "https://github.com/agoodkind/periphery"
  url "https://github.com/agoodkind/periphery/releases/download/3.9.6-agoodkind.1/periphery-3.9.6-agoodkind.1-macos-arm64.zip"
  version "3.9.6-agoodkind.1"
  sha256 "b1338e6871ef1cbd0d4a26813ad77eb3da53057519e44954ba3542a9c3ac5996"
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
