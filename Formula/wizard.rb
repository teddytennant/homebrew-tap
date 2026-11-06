class Wizard < Formula
  desc "One line. Your sovereign agent. Self-extending. Bring any model"
  homepage "https://github.com/teddytennant/wizard"
  license all_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/teddytennant/wizard/releases/download/v2026.11.4/wizard-aarch64-apple-darwin.tar.gz"
      sha256 "71fa32cd8ce6299db463e34c9fae7ff214dd06396ecb35f7c410b33e8fe47fcc"
    end
    on_intel do
      url "https://github.com/teddytennant/wizard/releases/download/v2026.11.4/wizard-x86_64-apple-darwin.tar.gz"
      sha256 "a84d4b1c8180eaf31db07bf975f82267d3a00b0b949211df4fe5b42c777a5dff"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/teddytennant/wizard/releases/download/v2026.11.4/wizard-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c35cb719b6ac05c1cf557e363f714241478278a39b2b8fc196e1cc1bdc40f481"
    end
    on_intel do
      url "https://github.com/teddytennant/wizard/releases/download/v2026.11.4/wizard-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e12a70edb932b9e6ba2ae21163a9c6ae6559f7e1cbb264065393318dce807ce1"
    end
  end

  def install
    bin.install "wizard", "wizard-ui-opencode", "wizard-ui-pi", "wizard-ui-codex", "wizard-ui-grok",
                "wizard-ui-jcode", "wizard-ui-claude"
  end

  test do
    assert_match(/^wizard 2026\.11\.4$/, shell_output("#{bin}/wizard --version"))
  end
end
