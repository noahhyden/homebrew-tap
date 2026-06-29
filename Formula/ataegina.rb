class Ataegina < Formula
  desc "Run many git worktrees as live full-stack dev environments, collision-free"
  homepage "https://github.com/noahhyden/ataegina-cli"
  url "https://raw.githubusercontent.com/noahhyden/ataegina-cli/v0.5.0/ataegina"
  version "0.5.0"
  sha256 "a858583d8aaf2823a507b967d2f0bca09ccb58376876ed56d587069992036acb"
  license "MIT"

  depends_on "git"

  def install
    bin.install "ataegina"
    # The docs recommend the short `ate` alias; ship it as a real symlink so it
    # works in non-interactive shells too.
    bin.install_symlink "ataegina" => "ate"
  end

  test do
    assert_match "ataegina #{version}", shell_output("#{bin}/ataegina --version")
  end
end
