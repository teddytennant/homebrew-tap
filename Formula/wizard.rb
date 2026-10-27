class Wizard < Formula
  desc "One line. Your sovereign agent. Self-extending. Bring any model"
  homepage "https://github.com/teddytennant/wizard"
  license all_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/teddytennant/wizard/releases/download/v3.10.1/wizard-aarch64-apple-darwin.tar.gz"
      sha256 "0940a319871cf531032a808168642e04b279d033c46ce70d2e9fe0c6fce16a0d"
    end
    on_intel do
      url "https://github.com/teddytennant/wizard/releases/download/v3.10.1/wizard-x86_64-apple-darwin.tar.gz"
      sha256 "2cd824b55a5aeeadf465d6c266456cd702fa3acc0d33ac4ddd7fe616a8b6dd90"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/teddytennant/wizard/releases/download/v3.10.1/wizard-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9994a8ad89aa64b43bd299016a80900e17355009d097fca0099fe940e88fd40f"
    end
    on_intel do
      url "https://github.com/teddytennant/wizard/releases/download/v3.10.1/wizard-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "15abfdb4f52442580f920c49cc0cc046419594d4771caf5d4b0a05e092406dac"
    end
  end

  def install
    bin.install "wizard", "wizard-ui-opencode", "wizard-ui-pi", "wizard-ui-codex", "wizard-ui-grok",
                "wizard-ui-jcode", "wizard-ui-claude"
  end

  test do
    assert_match(/^wizard 3\.10\.1$/, shell_output("#{bin}/wizard --version"))
  end
end
