class Wt < Formula
  desc "A simple git worktree manager"
  homepage "https://github.com/venables/wt"
  url "https://github.com/venables/wt/archive/refs/tags/v0.1.3.tar.gz"
  sha256 "06ac2210e8ba4380612a1f7bedd1e8ab8298040af52b8181f7c6a9c9b3c737e8"
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
    assert_match "wt 0.1.3", shell_output("#{bin}/wt --version")
  end
end
