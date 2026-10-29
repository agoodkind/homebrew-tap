class Periphery < Formula
  desc "Tool to identify unused Swift code"
  homepage "https://github.com/agoodkind/periphery"
  url "https://github.com/agoodkind/periphery/releases/download/3.9.0-agoodkind.1/periphery-3.9.0-agoodkind.1-macos-arm64.zip"
  version "3.9.0-agoodkind.1"
  sha256 "154f5c73e14ce66d77a2d23cd8148731d240528702d2b5adde7b813d5d2e9155"
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
