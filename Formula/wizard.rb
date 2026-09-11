class Wizard < Formula
  desc "One line. Your sovereign agent. Self-extending. Bring any model"
  homepage "https://github.com/teddytennant/wizard"
  license all_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/teddytennant/wizard/releases/download/v3.0.1/wizard-aarch64-apple-darwin.tar.gz"
      sha256 "c9904f6040afa293cd05e5f5773710f2ec1e6f2bbc542718cd9fda2a90aa6b33"
    end
    on_intel do
      url "https://github.com/teddytennant/wizard/releases/download/v3.0.1/wizard-x86_64-apple-darwin.tar.gz"
      sha256 "055bb14df3688c0afb061c6004086b9404126f2d25c3eec56524988bc0b255c8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/teddytennant/wizard/releases/download/v3.0.1/wizard-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0266812cdc5b408c895167632a3f215288618d44d1787520a130047db7a1c803"
    end
    on_intel do
      url "https://github.com/teddytennant/wizard/releases/download/v3.0.1/wizard-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "22d9bc43683528b8cff48cb557f5ba12f13a220df47ba255b4152bdb32ca0329"
    end
  end

  def install
    bin.install "wizard"
  end

  test do
    assert_match "wizard #{version}", shell_output("#{bin}/wizard --version")
  end
end
