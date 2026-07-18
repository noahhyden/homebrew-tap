class Ataegina < Formula
  desc "Run many git worktrees as live full-stack dev environments, collision-free"
  homepage "https://github.com/noahhyden/ataegina-cli"
  url "https://raw.githubusercontent.com/noahhyden/ataegina-cli/v0.6.0/ataegina"
  version "0.6.0"
  sha256 "a8e57f4f11335cdc2c3e55ab5d63e51e73a5ac5a0e6358838d1132a05ca3e13a"
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
