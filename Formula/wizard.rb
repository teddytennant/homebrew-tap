class Wizard < Formula
  desc "One line. Your sovereign agent. Self-extending. Bring any model"
  homepage "https://github.com/teddytennant/wizard"
  license all_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/teddytennant/wizard/releases/download/v3.1.2/wizard-aarch64-apple-darwin.tar.gz"
      sha256 "cabbeb6035b938d116eb44b644f64b48deeafce34c66b585e16c6903cfbced1e"
    end
    on_intel do
      url "https://github.com/teddytennant/wizard/releases/download/v3.1.2/wizard-x86_64-apple-darwin.tar.gz"
      sha256 "759ac7743d259d876231d46ab049375dbc4090f104aa32ff0cd3673ec183eb74"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/teddytennant/wizard/releases/download/v3.1.2/wizard-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f6bdd314c8ecacf2c5be1c3b7ccea082dc37402c82751d93cd77512b4854c295"
    end
    on_intel do
      url "https://github.com/teddytennant/wizard/releases/download/v3.1.2/wizard-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ac8482d63dc41ca571eaa18c45d8e7bc4f9215b0a9dc0443524c9e2f0c0d88e2"
    end
  end

  def install
    bin.install "wizard"
  end

  test do
    assert_match(/^wizard 3\.1\.2$/, shell_output("#{bin}/wizard --version"))
  end
end
