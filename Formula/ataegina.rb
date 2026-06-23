class Ataegina < Formula
  desc "Run many git worktrees as live full-stack dev environments, collision-free"
  homepage "https://github.com/noahhyden/ataegina"
  url "https://github.com/noahhyden/ataegina/releases/download/v0.4.0/ataegina"
  sha256 "da50163aea4e411602df4d3e05ad14cbb3e22a335aae48dc230677e332fb8200"
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
