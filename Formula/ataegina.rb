class Ataegina < Formula
  desc "Run many git worktrees as live full-stack dev environments, collision-free"
  homepage "https://github.com/noahhyden/ataegina-cli"
  url "https://github.com/noahhyden/ataegina-cli/releases/download/v1.1.0/ataegina"
  version "1.1.0"
  sha256 "a91f800d6b68283aeb0a4a6b7042162158f8298eadfacc2efc964382487203ac"
  license "Apache-2.0"

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
