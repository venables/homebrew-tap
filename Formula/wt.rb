class Wt < Formula
  desc "A simple git worktree manager"
  homepage "https://github.com/venables/wt"
  url "https://github.com/venables/wt/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "c8365d33cc34a0e9a434b5e6c34c5e697fc30db406a7a3ad9fcc60bfcc528344"
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
    assert_match "wt 0.2.0", shell_output("#{bin}/wt --version")
  end
end
