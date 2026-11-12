class Wizard < Formula
  desc "One line. Your sovereign agent. Self-extending. Bring any model"
  homepage "https://github.com/teddytennant/wizard"
  license all_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/teddytennant/wizard/releases/download/v2026.11.5/wizard-aarch64-apple-darwin.tar.gz"
      sha256 "16716068896be26fedf944db74ae3db9630c4fe8c9109e8328cbf72c44b789e1"
    end
    on_intel do
      url "https://github.com/teddytennant/wizard/releases/download/v2026.11.5/wizard-x86_64-apple-darwin.tar.gz"
      sha256 "ad2a5fdc763230644e8a4d4281beff9625ee9c04922c016195277d1b8a9966aa"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/teddytennant/wizard/releases/download/v2026.11.5/wizard-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "48c3de73c20dc65502db4aba01726767fd11df0a8d6a0eb1d09491702f547faf"
    end
    on_intel do
      url "https://github.com/teddytennant/wizard/releases/download/v2026.11.5/wizard-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a34bf5011028bcd1fd133b3a31f08623244e740f14a2fa4857fd9d47298b6d8d"
    end
  end

  def install
    bin.install "wizard", "wizard-ui-opencode", "wizard-ui-pi", "wizard-ui-codex", "wizard-ui-grok",
                "wizard-ui-jcode", "wizard-ui-claude"
  end

  test do
    assert_match(/^wizard 2026\.11\.5$/, shell_output("#{bin}/wizard --version"))
  end
end
