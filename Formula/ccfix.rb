class Ccfix < Formula
  desc "Un-wrap and clean up text copied out of the Claude Code terminal UI"
  homepage "https://github.com/venables/claude-copy-fix"
  url "https://github.com/venables/claude-copy-fix/releases/download/v0.1.0/ccfix-v0.1.0-macos-universal.tar.gz"
  sha256 "895fbe65b3402abbc1823a05a99213619fcdbd595cb751144bb10512df6ace9a"
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
