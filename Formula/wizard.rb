class Wizard < Formula
  desc "One line. Your sovereign agent. Self-extending. Bring any model"
  homepage "https://github.com/teddytennant/wizard"
  license all_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/teddytennant/wizard/releases/download/v3.2.0/wizard-aarch64-apple-darwin.tar.gz"
      sha256 "742a9496f9ad63c3e230575ec78d01dbe36e104f8bf114c7aec73fd0e6f51148"
    end
    on_intel do
      url "https://github.com/teddytennant/wizard/releases/download/v3.2.0/wizard-x86_64-apple-darwin.tar.gz"
      sha256 "7948a8c132582c6258c488d6bf7f09316547ab8300f331096e651bf91b04d5b3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/teddytennant/wizard/releases/download/v3.2.0/wizard-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e0b174dee788d910a9519d242b4922a69e5feefa2d4e70ca72c76d1331c52976"
    end
    on_intel do
      url "https://github.com/teddytennant/wizard/releases/download/v3.2.0/wizard-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2f7d32c94a7ee7c0497aa57e308f3781504e92dd79943d53fbe0f0e7e3ad1237"
    end
  end

  def install
    bin.install "wizard"
  end

  test do
    assert_match(/^wizard 3\.2$/, shell_output("#{bin}/wizard --version"))
  end
end
