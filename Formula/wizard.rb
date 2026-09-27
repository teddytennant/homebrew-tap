class Wizard < Formula
  desc "One line. Your sovereign agent. Self-extending. Bring any model"
  homepage "https://github.com/teddytennant/wizard"
  license all_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/teddytennant/wizard/releases/download/v3.5.2/wizard-aarch64-apple-darwin.tar.gz"
      sha256 "f9156c3936f7961ee8342957c9eb06b7d31a099bca0e420baf6a1c4b7bce869a"
    end
    on_intel do
      url "https://github.com/teddytennant/wizard/releases/download/v3.5.2/wizard-x86_64-apple-darwin.tar.gz"
      sha256 "dede877ed8dc9a72664d9740d5075bb19d1df721e43612e1064fe8be5aeb77ea"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/teddytennant/wizard/releases/download/v3.5.2/wizard-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "47030ac010dc7b78326df97ffb0b01c8284f23709a9f99cf9a8ea82a7ae9df7f"
    end
    on_intel do
      url "https://github.com/teddytennant/wizard/releases/download/v3.5.2/wizard-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ef807955edaafcb2132f825db592b337526815861128ff5653372b620727cebd"
    end
  end

  def install
    bin.install "wizard"
  end

  test do
    assert_match(/^wizard 3\.5\.2$/, shell_output("#{bin}/wizard --version"))
  end
end
