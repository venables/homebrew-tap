class ReviewPrs < Formula
  desc "Pick open GitHub PRs and fan out parallel reviews into new terminal tabs"
  homepage "https://github.com/venables/review-prs"
  url "https://github.com/venables/review-prs/archive/refs/tags/v0.1.0.tar.gz"
  # Placeholder sha256: the source repo's bump-tap workflow overwrites url +
  # sha256 on the first v* release. `brew install` fails until that bump lands.
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"
  head "https://github.com/venables/review-prs.git", branch: "main"
  license "MIT"

  depends_on "gh"
  depends_on "gum"
  depends_on "jq"

  def install
    bin.install "review-prs"
  end

  test do
    assert_predicate bin/"review-prs", :executable?
  end
end
