class Wizard < Formula
  desc "One line. Your sovereign agent. Self-extending. Bring any model"
  homepage "https://github.com/teddytennant/wizard"
  license all_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/teddytennant/wizard/releases/download/v2026.11.16/wizard-aarch64-apple-darwin.tar.gz"
      sha256 "6a7bb4d0d32fb9d12ba131bdb5a76b264797c751a003ffd53c08c48ad98292c9"
    end
    on_intel do
      url "https://github.com/teddytennant/wizard/releases/download/v2026.11.16/wizard-x86_64-apple-darwin.tar.gz"
      sha256 "9bdc7e2a8aa3876c28e95f4cbb84df32cb94f4417f80d51a02118fbe31c03fe7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/teddytennant/wizard/releases/download/v2026.11.16/wizard-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "fc161725887b4835f33249e17315a978cf741529d247e9b15e1cde9c5a17f9ed"
    end
    on_intel do
      url "https://github.com/teddytennant/wizard/releases/download/v2026.11.16/wizard-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0a213c8800c39415baee36d3833e515d1a025d45bba1350d2e220c819d3a69ec"
    end
  end

  def install
    bin.install "wizard", "wizard-ui-opencode", "wizard-ui-pi", "wizard-ui-codex", "wizard-ui-grok",
                "wizard-ui-jcode", "wizard-ui-claude"
  end

  test do
    assert_match(/^wizard 2026\.11\.16$/, shell_output("#{bin}/wizard --version"))
  end
end
