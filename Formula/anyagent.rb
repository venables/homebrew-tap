class Anyagent < Formula
  desc "One non-interactive interface in front of any coding agent (claude, codex, opencode)"
  homepage "https://github.com/venabots/anyagent"
  url "https://github.com/venabots/anyagent/archive/refs/tags/v0.1.0.tar.gz"
  # Placeholder sha256: the source repo's bump-tap workflow overwrites url +
  # sha256 on the first v* release. `brew install` fails until that bump lands
  # (use `brew install --HEAD` in the meantime).
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"
  head "https://github.com/venabots/anyagent.git", branch: "main"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "anyagent #{version}", shell_output("#{bin}/anyagent --version")
  end
end
