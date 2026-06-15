class Wt < Formula
  desc "A simple git worktree manager"
  homepage "https://github.com/venables/wt"
  url "https://github.com/venables/wt/archive/refs/tags/v0.5.0.tar.gz"
  sha256 "64d5c73dce3fa846509b3f593f9a05a6a387d1943aea8bf3ccbf62a4bf3ca71a"
  license "MIT"

  depends_on "gum"

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
    assert_match "wt 0.5.0", shell_output("#{bin}/wt --version")
  end
end
