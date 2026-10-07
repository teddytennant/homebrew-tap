class Wizard < Formula
  desc "One line. Your sovereign agent. Self-extending. Bring any model"
  homepage "https://github.com/teddytennant/wizard"
  license all_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/teddytennant/wizard/releases/download/v3.8.1/wizard-aarch64-apple-darwin.tar.gz"
      sha256 "2bed39d3546e6d51885eaf1d6baffc96a65d885369337305c2dac9d475d57cf0"
    end
    on_intel do
      url "https://github.com/teddytennant/wizard/releases/download/v3.8.1/wizard-x86_64-apple-darwin.tar.gz"
      sha256 "1f68326b5e644e232b45893ec6ebc7f479881fd31fcc1bc401d7402a55f3ae84"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/teddytennant/wizard/releases/download/v3.8.1/wizard-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d155581e6461b29882b31a0e52a41a8ade4ea1478fe3b1fa0aaed6b3a1b0d49e"
    end
    on_intel do
      url "https://github.com/teddytennant/wizard/releases/download/v3.8.1/wizard-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ff49d3c1ecee50861fa8f7574324564e149d8f3755209eacaa46cea46dd9322e"
    end
  end

  def install
    bin.install "wizard"
  end

  test do
    assert_match(/^wizard 3\.8\.1$/, shell_output("#{bin}/wizard --version"))
  end
end
