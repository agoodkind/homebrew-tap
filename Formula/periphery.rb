class Periphery < Formula
  desc "Tool to identify unused Swift code"
  homepage "https://github.com/agoodkind/periphery"
  url "https://github.com/agoodkind/periphery/releases/download/3.8.0-agoodkind.5/periphery-3.8.0-agoodkind.5-macos-arm64.zip"
  version "3.8.0-agoodkind.5"
  sha256 "d42afd3587691e8edb4ec115a10b3721156cc39374e6e0ff3f8ca17273641e72"
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
