class Ataegina < Formula
  desc "Run many git worktrees as live full-stack dev environments, collision-free"
  homepage "https://github.com/noahhyden/ataegina-cli"
  url "https://github.com/noahhyden/ataegina-cli/releases/download/v0.7.0/ataegina"
  version "0.6.0"
  sha256 "823994bb571f8a835a8fd90fe236e5b52f1a5652db539a858cc57e98a3c27b85"
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
