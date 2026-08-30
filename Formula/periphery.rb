class Periphery < Formula
  desc "Tool to identify unused Swift code"
  homepage "https://github.com/agoodkind/periphery"
  url "https://github.com/agoodkind/periphery/releases/download/3.8.0-agoodkind.2/periphery-3.8.0-agoodkind.2-macos-arm64.zip"
  version "3.8.0-agoodkind.2"
  sha256 "93888f7c5c1b6c3fb06480cbeeb0f6dc36be946b0433c298163ef6257d845a22"
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
