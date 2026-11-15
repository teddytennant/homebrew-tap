class Wizard < Formula
  desc "One line. Your sovereign agent. Self-extending. Bring any model"
  homepage "https://github.com/teddytennant/wizard"
  license all_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/teddytennant/wizard/releases/download/v2026.11.15/wizard-aarch64-apple-darwin.tar.gz"
      sha256 "da69e4ed9510efe3c88b74d526ef4641293aeba8fe53869b8f68cee0ae577905"
    end
    on_intel do
      url "https://github.com/teddytennant/wizard/releases/download/v2026.11.15/wizard-x86_64-apple-darwin.tar.gz"
      sha256 "8544d9dd507d6b27844b4eadf24e9d26a0c20942f70545d1f1350bc6ed6dfec0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/teddytennant/wizard/releases/download/v2026.11.15/wizard-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f23196075250e97d3883b8e99ae4252b51df2f3f05fc35ee2be39fa6bfd21ce8"
    end
    on_intel do
      url "https://github.com/teddytennant/wizard/releases/download/v2026.11.15/wizard-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ba0ce6a56f63705d80d70615f5780801924599656dbd08257db4862bc676dbd7"
    end
  end

  def install
    bin.install "wizard", "wizard-ui-opencode", "wizard-ui-pi", "wizard-ui-codex", "wizard-ui-grok",
                "wizard-ui-jcode", "wizard-ui-claude"
  end

  test do
    assert_match(/^wizard 2026\.11\.15$/, shell_output("#{bin}/wizard --version"))
  end
end
