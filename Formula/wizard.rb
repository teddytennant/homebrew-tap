class Wizard < Formula
  desc "One line. Your sovereign agent. Self-extending. Bring any model"
  homepage "https://github.com/teddytennant/wizard"
  license all_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/teddytennant/wizard/releases/download/v2026.11.17/wizard-aarch64-apple-darwin.tar.gz"
      sha256 "9a4116022648be02f1c49376b447a0277a13e47471f64022668f0ade30ef2bd6"
    end
    on_intel do
      url "https://github.com/teddytennant/wizard/releases/download/v2026.11.17/wizard-x86_64-apple-darwin.tar.gz"
      sha256 "9279a5c4ac273f7a58004f744d8ec94049a5083259b9811fecdbc6432fb7cc34"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/teddytennant/wizard/releases/download/v2026.11.17/wizard-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "68ec602117f439250a16c5c4d2ead7f6e7754fda8ea91477b354e401f58c3d8f"
    end
    on_intel do
      url "https://github.com/teddytennant/wizard/releases/download/v2026.11.17/wizard-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4f5a27f5190d4900918f85fbaca952d5b53e9bd619af17bd8bec30fc8f458a80"
    end
  end

  def install
    bin.install "wizard", "wizard-ui-opencode", "wizard-ui-pi", "wizard-ui-codex", "wizard-ui-grok",
                "wizard-ui-jcode", "wizard-ui-claude"
  end

  test do
    assert_match(/^wizard 2026\.11\.17$/, shell_output("#{bin}/wizard --version"))
  end
end
