class Wizard < Formula
  desc "One line. Your sovereign agent. Self-extending. Bring any model"
  homepage "https://github.com/teddytennant/wizard"
  license all_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/teddytennant/wizard/releases/download/v3.9.0/wizard-aarch64-apple-darwin.tar.gz"
      sha256 "367623c7a514e46c135d8b5cbdb775ae04bf2cb87f382b2da9972627af6602c1"
    end
    on_intel do
      url "https://github.com/teddytennant/wizard/releases/download/v3.9.0/wizard-x86_64-apple-darwin.tar.gz"
      sha256 "4dd6a7996c2ab82cd1c80135b2d2ac1c864f40cc8698add6f016350bb948d76a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/teddytennant/wizard/releases/download/v3.9.0/wizard-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "fcdcdd7a5cddf62e10b87ca72feef89b77197ba8c6bc0b160414657cf7dab4f9"
    end
    on_intel do
      url "https://github.com/teddytennant/wizard/releases/download/v3.9.0/wizard-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "12365b5ab1ab3ed428925ef8a659dfc84966ecafa38f085543db9e7622c6293c"
    end
  end

  def install
    bin.install "wizard", "wizard-ui-opencode", "wizard-ui-pi", "wizard-ui-codex", "wizard-ui-grok",
                "wizard-ui-jcode", "wizard-ui-claude"
  end

  test do
    assert_match(/^wizard 3\.9$/, shell_output("#{bin}/wizard --version"))
  end
end
