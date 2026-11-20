class Wizard < Formula
  desc "One line. Your sovereign agent. Self-extending. Bring any model"
  homepage "https://github.com/teddytennant/wizard"
  license all_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/teddytennant/wizard/releases/download/v2026.11.20/wizard-aarch64-apple-darwin.tar.gz"
      sha256 "c886e61c0ca48fba1eae2942fe21fbd3bb8dec863d2ce80b0a957e868ab46328"
    end
    on_intel do
      url "https://github.com/teddytennant/wizard/releases/download/v2026.11.20/wizard-x86_64-apple-darwin.tar.gz"
      sha256 "cf43a6ab2db59428092d125166573f46599d2a961831ba59645b4a1bdd264eec"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/teddytennant/wizard/releases/download/v2026.11.20/wizard-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7ca9e295ddc9f51eaf2187bc4a823e3b59bbf7e469acaf388d7d9546123ea07a"
    end
    on_intel do
      url "https://github.com/teddytennant/wizard/releases/download/v2026.11.20/wizard-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "42c9ead181492572e6be87c83ad9ab842720a7ee3f301130efd910d0391ddb39"
    end
  end

  def install
    bin.install "wizard", "wizard-ui-opencode", "wizard-ui-pi", "wizard-ui-codex", "wizard-ui-grok",
                "wizard-ui-jcode", "wizard-ui-claude"
  end

  test do
    assert_match(/^wizard 2026\.11\.20$/, shell_output("#{bin}/wizard --version"))
  end
end
