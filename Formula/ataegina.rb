class Ataegina < Formula
  desc "Run many git worktrees as live full-stack dev environments, collision-free"
  homepage "https://github.com/noahhyden/ataegina-cli"
  url "https://github.com/noahhyden/ataegina-cli/releases/download/v1.0.1/ataegina"
  version "0.6.0"
  sha256 "fd2eb5c5812969fc2088b3c5395384a066a32e3734e56e35c0d698849af7578c"
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
