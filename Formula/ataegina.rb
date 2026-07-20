class Ataegina < Formula
  desc "Run many git worktrees as live full-stack dev environments, collision-free"
  homepage "https://github.com/noahhyden/ataegina-cli"
  url "https://github.com/noahhyden/ataegina-cli/releases/download/v1.0.0/ataegina"
  version "0.6.0"
  sha256 "b572727da9e680e4488e257458488c5e4e7c2dacc2b23e05daa3c32b7daf0690"
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
