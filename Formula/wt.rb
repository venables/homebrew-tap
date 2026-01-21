class Wt < Formula
  desc "A simple git worktree manager"
  homepage "https://github.com/venables/wt"
  url "https://github.com/venables/wt/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "86fc7a884e918ec57aacc8e3dbdd88d23013d3ee899863866a150f8ba2be760d"
  license "MIT"

  def install
    bin.install "bin/wt"
  end

  test do
    assert_match "wt 0.1.0", shell_output("#{bin}/wt --version")
  end
end
