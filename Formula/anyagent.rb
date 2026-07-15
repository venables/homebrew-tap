class Anyagent < Formula
  desc "One non-interactive interface in front of any coding agent (claude, codex, opencode)"
  homepage "https://github.com/venables/anyagent"
  url "https://github.com/venables/anyagent/archive/refs/tags/v0.3.0.tar.gz"
  # Placeholder sha256: the source repo's bump-tap workflow overwrites url +
  # sha256 on the v0.3.0 tag push. `brew install` fails until that bump lands
  # (use `brew install --HEAD` in the meantime).
  sha256 "1f9f0e264a5fa5a16b87391c17a8635e64a102bfbb942bbeb5fa2b17a149c82d"
  head "https://github.com/venables/anyagent.git", branch: "main"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "anyagent #{version}", shell_output("#{bin}/anyagent --version")
  end
end
