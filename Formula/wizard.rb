class Wizard < Formula
  desc "One line. Your sovereign agent. Self-extending. Bring any model"
  homepage "https://github.com/teddytennant/wizard"
  license all_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/teddytennant/wizard/releases/download/v3.1.1/wizard-aarch64-apple-darwin.tar.gz"
      sha256 "8babd0463f88ad11dbeb8e95ea99f3bbd766068c9aed077e7aa5ca8f7ee89037"
    end
    on_intel do
      url "https://github.com/teddytennant/wizard/releases/download/v3.1.1/wizard-x86_64-apple-darwin.tar.gz"
      sha256 "aa5f53ccfaecedebfb8739730921fe66e656511685a7e172ebe3a776cec20d2a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/teddytennant/wizard/releases/download/v3.1.1/wizard-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9b1604237cdb04aa58005ec857e580364279f03d82d0542b3ae9e18c58e5cc6f"
    end
    on_intel do
      url "https://github.com/teddytennant/wizard/releases/download/v3.1.1/wizard-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ef90580f3fc06ae1401c20dffa8112b44b30a536324c1b50389d501f6f71f16a"
    end
  end

  def install
    bin.install "wizard"
  end

  test do
    assert_match(/^wizard 3\.1\.1$/, shell_output("#{bin}/wizard --version"))
  end
end
