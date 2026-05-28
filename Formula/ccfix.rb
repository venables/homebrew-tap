class Ccfix < Formula
  desc "Un-wrap and clean up text copied out of the Claude Code terminal UI"
  homepage "https://github.com/venables/claude-copy-fix"
  url "https://github.com/venables/claude-copy-fix/releases/download/v0.1.0/ccfix-v0.1.0-macos-universal.tar.gz"
  sha256 "c61685842f1f5c09d5b79e7c08dca2afa07a2cff0198b561c73f5ff2f7924310"
  version "0.1.0"
  license "MIT"

  depends_on :macos

  def install
    bin.install "ccfix"
  end

  test do
    assert_match "ccfix #{version}", shell_output("#{bin}/ccfix --version")
  end
end
