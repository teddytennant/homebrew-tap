class Wizard < Formula
  desc "One line. Your sovereign agent. Self-extending. Bring any model"
  homepage "https://github.com/teddytennant/wizard"
  license all_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/teddytennant/wizard/releases/download/v3.6.1/wizard-aarch64-apple-darwin.tar.gz"
      sha256 "dde40b67523ff4f6fcff7f62cca3534638dcb28b65385047a8eeec6c317f5e2c"
    end
    on_intel do
      url "https://github.com/teddytennant/wizard/releases/download/v3.6.1/wizard-x86_64-apple-darwin.tar.gz"
      sha256 "403c95aef4a034ae734334a372dc3f835b9484dc304cc3badb8bde93b39234d8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/teddytennant/wizard/releases/download/v3.6.1/wizard-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8c143d9734972867ae61421f45bda5f04f644c142b96b8048d9783fcbe773a36"
    end
    on_intel do
      url "https://github.com/teddytennant/wizard/releases/download/v3.6.1/wizard-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "912490ac8964c957e847faa755ee21b4452c793270244da156573f6632972c0f"
    end
  end

  def install
    bin.install "wizard"
  end

  test do
    assert_match(/^wizard 3\.6\.1$/, shell_output("#{bin}/wizard --version"))
  end
end
