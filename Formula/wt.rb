class Wt < Formula
  desc "A simple git worktree manager"
  homepage "https://github.com/venables/wt"
  url "https://github.com/venables/wt/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "2a033945aa351a182249eec94489d75d911e6cc330536c32395796d48b98012d"
  license "MIT"

  def install
    bin.install "bin/wt"
    (share/"wt").install "share/wt.sh"
  end

  def caveats
    <<~EOS
      To enable auto-cd into new worktrees, add to your shell config:

        source "$(brew --prefix)/share/wt/wt.sh"

      Or add this function directly:

        wt() { local p; p=$(command wt "$@") && [[ -d "$p" ]] && cd "$p" || echo "$p"; }
    EOS
  end

  test do
    assert_match "wt 0.1.1", shell_output("#{bin}/wt --version")
  end
end
