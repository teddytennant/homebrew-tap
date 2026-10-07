class Wizard < Formula
  desc "One line. Your sovereign agent. Self-extending. Bring any model"
  homepage "https://github.com/teddytennant/wizard"
  license all_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/teddytennant/wizard/releases/download/v3.8.0/wizard-aarch64-apple-darwin.tar.gz"
      sha256 "65d9dc626259d271f69b579333624284e90829ed90e7d965e67887d1476dd873"
    end
    on_intel do
      url "https://github.com/teddytennant/wizard/releases/download/v3.8.0/wizard-x86_64-apple-darwin.tar.gz"
      sha256 "ade848c2bac8c1e1849b5164c6ff154d2eddc52bd069d83b335e8b5cf196edb9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/teddytennant/wizard/releases/download/v3.8.0/wizard-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9e26b6776176036c2049c27c1fc48e984727bb5a05ca56a6d09e30b050a3f5eb"
    end
    on_intel do
      url "https://github.com/teddytennant/wizard/releases/download/v3.8.0/wizard-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4796f3a9dd2f7df5d1598ecc38b33624c0d0113f0fc57dd6024bbb0bb444b9df"
    end
  end

  def install
    bin.install "wizard"
  end

  test do
    assert_match(/^wizard 3\.8$/, shell_output("#{bin}/wizard --version"))
  end
end
