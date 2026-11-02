class Wizard < Formula
  desc "One line. Your sovereign agent. Self-extending. Bring any model"
  homepage "https://github.com/teddytennant/wizard"
  license all_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/teddytennant/wizard/releases/download/v2026.11.1/wizard-aarch64-apple-darwin.tar.gz"
      sha256 "81f573bc4fa791eda5c75b52684e6f363c288e12bff3d005112c0181f71dedeb"
    end
    on_intel do
      url "https://github.com/teddytennant/wizard/releases/download/v2026.11.1/wizard-x86_64-apple-darwin.tar.gz"
      sha256 "9d95255f50593b3ed8992e279724d0323bb84dbf94c0e4e2172d9b9e5c2757cc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/teddytennant/wizard/releases/download/v2026.11.1/wizard-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "919d53b576004d5348df72a2b112a19f559fb88e3d45bf44ad20c4ca496faba7"
    end
    on_intel do
      url "https://github.com/teddytennant/wizard/releases/download/v2026.11.1/wizard-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "51fc861e8654fd7376a9128486dd047f38dbadb1251f58b32d2a56f0ab494b05"
    end
  end

  def install
    bin.install "wizard", "wizard-ui-opencode", "wizard-ui-pi", "wizard-ui-codex", "wizard-ui-grok",
                "wizard-ui-jcode", "wizard-ui-claude"
  end

  test do
    assert_match(/^wizard 2026\.11\.1$/, shell_output("#{bin}/wizard --version"))
  end
end
