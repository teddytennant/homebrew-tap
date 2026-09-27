class Wizard < Formula
  desc "One line. Your sovereign agent. Self-extending. Bring any model"
  homepage "https://github.com/teddytennant/wizard"
  license all_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/teddytennant/wizard/releases/download/v3.6.0/wizard-aarch64-apple-darwin.tar.gz"
      sha256 "b6a1f6e12d85c43daf790c3eef4c93763609535fc8c4aa394af745bb7f8b8ab1"
    end
    on_intel do
      url "https://github.com/teddytennant/wizard/releases/download/v3.6.0/wizard-x86_64-apple-darwin.tar.gz"
      sha256 "d060150f33768489e980b6b8b1d519bc56890dbcb2c0bb508d44934a80ebd99f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/teddytennant/wizard/releases/download/v3.6.0/wizard-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e6418482ad0744330c07ff57242cc73de5517ebc1c4da7123afcadf4e67ea883"
    end
    on_intel do
      url "https://github.com/teddytennant/wizard/releases/download/v3.6.0/wizard-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2e3420b2b1a73b35966490e3bcde91f190ad1e724f7b32de7a5ec1a66fe1ead0"
    end
  end

  def install
    bin.install "wizard"
  end

  test do
    assert_match(/^wizard 3\.6$/, shell_output("#{bin}/wizard --version"))
  end
end
