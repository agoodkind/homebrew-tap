class Periphery < Formula
  desc "Tool to identify unused Swift code"
  homepage "https://github.com/agoodkind/periphery"
  url "https://github.com/agoodkind/periphery/releases/download/3.9.9-agoodkind.1/periphery-3.9.9-agoodkind.1-macos-arm64.zip"
  version "3.9.9-agoodkind.1"
  sha256 "8edc0fa04312e14091ca2931bfee3e5efd40ff0ac6f54b58dcddc58413a34b2c"
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
