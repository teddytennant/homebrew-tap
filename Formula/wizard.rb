class Wizard < Formula
  desc "One line. Your sovereign agent. Self-extending. Bring any model"
  homepage "https://github.com/teddytennant/wizard"
  license all_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/teddytennant/wizard/releases/download/v3.7.0/wizard-aarch64-apple-darwin.tar.gz"
      sha256 "c8cc454aef2161f77d86349d2f9f1608b42e35ecc00d3585b249bc49335e5045"
    end
    on_intel do
      url "https://github.com/teddytennant/wizard/releases/download/v3.7.0/wizard-x86_64-apple-darwin.tar.gz"
      sha256 "69d56ee81f40757a339a6ec74de9997ba7a8cfd11e5f705daadaba87bff53572"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/teddytennant/wizard/releases/download/v3.7.0/wizard-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2f609f1f9665cb28e11c39c2ace0d01431a45c9c299bde4cecb68c1550d1cd70"
    end
    on_intel do
      url "https://github.com/teddytennant/wizard/releases/download/v3.7.0/wizard-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ef345aed3f5ca561e422c2eca410007a382da36939a723eeb349ed4e6966bc28"
    end
  end

  def install
    bin.install "wizard"
  end

  test do
    assert_match(/^wizard 3\.7$/, shell_output("#{bin}/wizard --version"))
  end
end
