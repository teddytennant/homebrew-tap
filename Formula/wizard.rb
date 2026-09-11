class Wizard < Formula
  desc "One line. Your sovereign agent. Self-extending. Bring any model"
  homepage "https://github.com/teddytennant/wizard"
  license all_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/teddytennant/wizard/releases/download/v3.1.0/wizard-aarch64-apple-darwin.tar.gz"
      sha256 "8fecf72cddb96de7dfe0c1133eae341a48dcd087532d63cd2cab9ab3b7e3167e"
    end
    on_intel do
      url "https://github.com/teddytennant/wizard/releases/download/v3.1.0/wizard-x86_64-apple-darwin.tar.gz"
      sha256 "0c073133e9fc59d7b739e624b211939da8d7b04f24e9cb9a2ff62fe6514724c3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/teddytennant/wizard/releases/download/v3.1.0/wizard-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "86ad9f1a8c82ccfb1c1320ffcb3684815444f206fe7798e884a6935df70b2ba1"
    end
    on_intel do
      url "https://github.com/teddytennant/wizard/releases/download/v3.1.0/wizard-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e0dc6aeb13fa881a0fafbd4043805d6d2ffe1ea1dbffeb0e6e55aea75d4661cd"
    end
  end

  def install
    bin.install "wizard"
  end

  test do
    assert_match(/^wizard 3\.1$/, shell_output("#{bin}/wizard --version"))
  end
end
