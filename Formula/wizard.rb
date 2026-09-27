class Wizard < Formula
  desc "One line. Your sovereign agent. Self-extending. Bring any model"
  homepage "https://github.com/teddytennant/wizard"
  license all_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/teddytennant/wizard/releases/download/v3.5.0/wizard-aarch64-apple-darwin.tar.gz"
      sha256 "0718e8fe2b9604fecf0364e5c9b17eeb3ef2cabdb6ba743869c7526f55d3fda0"
    end
    on_intel do
      url "https://github.com/teddytennant/wizard/releases/download/v3.5.0/wizard-x86_64-apple-darwin.tar.gz"
      sha256 "b510172e3555828c731177202840ff743661952692e93aa99b745f301a7a9405"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/teddytennant/wizard/releases/download/v3.5.0/wizard-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5166b44bfe427401623403bcde2068fcbf069c5e53b0a45a3410713b31b3a8e2"
    end
    on_intel do
      url "https://github.com/teddytennant/wizard/releases/download/v3.5.0/wizard-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5a9dabeafbeca9a5a15234335bf9ecef2a3f34f5af9e884133a4f991089f9d73"
    end
  end

  def install
    bin.install "wizard"
  end

  test do
    assert_match(/^wizard 3\.5$/, shell_output("#{bin}/wizard --version"))
  end
end
