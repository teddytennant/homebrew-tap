class Wizard < Formula
  desc "One line. Your sovereign agent. Self-extending. Bring any model"
  homepage "https://github.com/teddytennant/wizard"
  license all_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/teddytennant/wizard/releases/download/v3.8.8/wizard-aarch64-apple-darwin.tar.gz"
      sha256 "4c5df54e2dbd4f50bb1a28dc9b6a6be1cb57e5a6ba6043dd52151dd22cc3e800"
    end
    on_intel do
      url "https://github.com/teddytennant/wizard/releases/download/v3.8.8/wizard-x86_64-apple-darwin.tar.gz"
      sha256 "c5e9996e505981dd75685ee7225cfbffed8d48ecf8d07b98092abda41ef99a4d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/teddytennant/wizard/releases/download/v3.8.8/wizard-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "14ef0b077f6ef24f09c46ca5cba694cc6c1d2da050997845029aaa2bdaa1f6d6"
    end
    on_intel do
      url "https://github.com/teddytennant/wizard/releases/download/v3.8.8/wizard-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2e1a1021da9243ad9d7b92d2d9729061d6372d2581c29eb95bab95e86583ceae"
    end
  end

  def install
    bin.install "wizard", "wizard-ui-opencode", "wizard-ui-pi", "wizard-ui-codex", "wizard-ui-grok"
  end

  test do
    assert_match(/^wizard 3\.8\.8$/, shell_output("#{bin}/wizard --version"))
  end
end
