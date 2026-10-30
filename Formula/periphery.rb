class Periphery < Formula
  desc "Tool to identify unused Swift code"
  homepage "https://github.com/agoodkind/periphery"
  url "https://github.com/agoodkind/periphery/releases/download/3.9.4-agoodkind.1/periphery-3.9.4-agoodkind.1-macos-arm64.zip"
  version "3.9.4-agoodkind.1"
  sha256 "437c0157c3a39833c421ee468b31cea9d9f98c7bde2c4aed06c6855a722aa93a"
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
