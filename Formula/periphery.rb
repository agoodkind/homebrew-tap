class Periphery < Formula
  desc "Tool to identify unused Swift code"
  homepage "https://github.com/agoodkind/periphery"
  url "https://github.com/agoodkind/periphery/releases/download/3.8.0-agoodkind.2/periphery-3.8.0-agoodkind.2-macos-arm64.zip"
  version "3.8.0-agoodkind.2"
  sha256 "5edb9c7e66474cf82cd7edc5eb842e3d64209402df4249a37cd00fe5bfcc71d9"
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
