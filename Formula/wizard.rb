class Wizard < Formula
  desc "One line. Your sovereign agent. Self-extending. Bring any model"
  homepage "https://github.com/teddytennant/wizard"
  license all_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/teddytennant/wizard/releases/download/v3.8.5/wizard-aarch64-apple-darwin.tar.gz"
      sha256 "6963294f65f42b89efe1f6b8e0d972a4ba7e4e3ff096c0ab8de6f39e5a918fbe"
    end
    on_intel do
      url "https://github.com/teddytennant/wizard/releases/download/v3.8.5/wizard-x86_64-apple-darwin.tar.gz"
      sha256 "1bcc88269b32c6eb1b3b3f69ce3ef21ce2f2315d4b4d28a0a8bb20e83da26e03"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/teddytennant/wizard/releases/download/v3.8.5/wizard-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5d9cc57d7438b516ab25a1d8edf9ac88093e9268b5c3d91d77175b5eec7fb0a0"
    end
    on_intel do
      url "https://github.com/teddytennant/wizard/releases/download/v3.8.5/wizard-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d598dba5293b41fbc3c1de465a6b5d02eea68c9bb85ff5cdeec6cf760409e237"
    end
  end

  def install
    bin.install "wizard", "wizard-ui-opencode", "wizard-ui-pi", "wizard-ui-codex", "wizard-ui-grok"
  end

  test do
    assert_match(/^wizard 3\.8\.5$/, shell_output("#{bin}/wizard --version"))
  end
end
