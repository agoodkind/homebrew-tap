class Periphery < Formula
  desc "Tool to identify unused Swift code"
  homepage "https://github.com/agoodkind/periphery"
  url "https://github.com/agoodkind/periphery/releases/download/3.8.0-agoodkind.4/periphery-3.8.0-agoodkind.4-macos-arm64.zip"
  version "3.8.0-agoodkind.4"
  sha256 "30960a761c1fb09413e710c6dc28ac4b98d053e046259486ed0da5fe36cca3bd"
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
