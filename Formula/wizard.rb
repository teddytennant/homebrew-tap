class Wizard < Formula
  desc "One line. Your sovereign agent. Self-extending. Bring any model"
  homepage "https://github.com/teddytennant/wizard"
  license all_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/teddytennant/wizard/releases/download/v3.11.1/wizard-aarch64-apple-darwin.tar.gz"
      sha256 "0e63d4bde9ca8f17323f0badd1d3b2c57706ba050259871b8dbf86a0442efd19"
    end
    on_intel do
      url "https://github.com/teddytennant/wizard/releases/download/v3.11.1/wizard-x86_64-apple-darwin.tar.gz"
      sha256 "c4c3322cfcf2f19b2695d5e667d6d4e2e0b8cad5f2fd4460dbabc0016517e8ca"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/teddytennant/wizard/releases/download/v3.11.1/wizard-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "08b7af6d9f7eabe41bee8de69d17d6d86edd77eab48550c7e0f32e03bcbf7d7b"
    end
    on_intel do
      url "https://github.com/teddytennant/wizard/releases/download/v3.11.1/wizard-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "07e8914c4b44ca85ffa75b971f7540e5013c7b9dc0d1223d2243bb72eb4c8ebe"
    end
  end

  def install
    bin.install "wizard", "wizard-ui-opencode", "wizard-ui-pi", "wizard-ui-codex", "wizard-ui-grok",
                "wizard-ui-jcode", "wizard-ui-claude"
  end

  test do
    assert_match(/^wizard 3\.11\.1$/, shell_output("#{bin}/wizard --version"))
  end
end
