class Wizard < Formula
  desc "One line. Your sovereign agent. Self-extending. Bring any model"
  homepage "https://github.com/teddytennant/wizard"
  license all_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/teddytennant/wizard/releases/download/v3.7.1/wizard-aarch64-apple-darwin.tar.gz"
      sha256 "9d7bf414881f094a3a7d0f08ca4e6b0af19cd29b31568cac97b3d7cf281f6c0a"
    end
    on_intel do
      url "https://github.com/teddytennant/wizard/releases/download/v3.7.1/wizard-x86_64-apple-darwin.tar.gz"
      sha256 "b70c0f35164db8d1e6c87a3abc51d0e6f29b734e90da0bc5895b020ccbef3cea"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/teddytennant/wizard/releases/download/v3.7.1/wizard-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f41010f582b101fcb5289a763e610a60bdf778f098e40e881bdcd105b37ee906"
    end
    on_intel do
      url "https://github.com/teddytennant/wizard/releases/download/v3.7.1/wizard-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a3993cecd403fadcf1e2e3ce012b3d0fc8779afa4e6eb89611e74451fc1da194"
    end
  end

  def install
    bin.install "wizard"
  end

  test do
    assert_match(/^wizard 3\.7\.1$/, shell_output("#{bin}/wizard --version"))
  end
end
