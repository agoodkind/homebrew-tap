class Periphery < Formula
  desc "Tool to identify unused Swift code"
  homepage "https://github.com/agoodkind/periphery"
  url "https://github.com/agoodkind/periphery/releases/download/3.8.0-agoodkind.7/periphery-3.8.0-agoodkind.7-macos-arm64.zip"
  version "3.8.0-agoodkind.7"
  sha256 "fb26367d13347e0178940ceaaa617e200f1e811b168ca37ba38c9f9c1c4cd540"
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
