class Wizard < Formula
  desc "One line. Your sovereign agent. Self-extending. Bring any model"
  homepage "https://github.com/teddytennant/wizard"
  license all_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/teddytennant/wizard/releases/download/v3.8.7/wizard-aarch64-apple-darwin.tar.gz"
      sha256 "8c26bd5c771ebb2a1530611fe16e830c8daa7eabcab8138584832901eb64002f"
    end
    on_intel do
      url "https://github.com/teddytennant/wizard/releases/download/v3.8.7/wizard-x86_64-apple-darwin.tar.gz"
      sha256 "c2b2a62003b12c4691091a06fd3d7b1437e39d149d7e29048ed798c70c9c0d7f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/teddytennant/wizard/releases/download/v3.8.7/wizard-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c97d52bf0cba14b3dbe9984cd7ded178d106cb610c5f9377040eb300c9cffbec"
    end
    on_intel do
      url "https://github.com/teddytennant/wizard/releases/download/v3.8.7/wizard-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c091a4019cd372ab461ed39838873f980cab1339d0dd54c84b3203f0ef01a35a"
    end
  end

  def install
    bin.install "wizard", "wizard-ui-opencode", "wizard-ui-pi", "wizard-ui-codex", "wizard-ui-grok"
  end

  test do
    assert_match(/^wizard 3\.8\.7$/, shell_output("#{bin}/wizard --version"))
  end
end
