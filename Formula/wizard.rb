class Wizard < Formula
  desc "One line. Your sovereign agent. Self-extending. Bring any model"
  homepage "https://github.com/teddytennant/wizard"
  license all_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/teddytennant/wizard/releases/download/v3.8.10/wizard-aarch64-apple-darwin.tar.gz"
      sha256 "04bb1f76db612513525646e883169a915204315af520b5601977c5bd68d4cb45"
    end
    on_intel do
      url "https://github.com/teddytennant/wizard/releases/download/v3.8.10/wizard-x86_64-apple-darwin.tar.gz"
      sha256 "3be5d68746968bacbef405c6e3ca2784ee64087a9a6c898ffe08a52d898cf7e0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/teddytennant/wizard/releases/download/v3.8.10/wizard-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c66a518ff9023b5c35c2b10ca1a1a0bc381a3bc2f0e1b04192bd00966df31403"
    end
    on_intel do
      url "https://github.com/teddytennant/wizard/releases/download/v3.8.10/wizard-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1ac7d8b51247c246f8a1f486c3949ca6943b333f1f826df6a62f8f2a7b3cbd4f"
    end
  end

  def install
    bin.install "wizard", "wizard-ui-opencode", "wizard-ui-pi", "wizard-ui-codex", "wizard-ui-grok",
                "wizard-ui-jcode"
  end

  test do
    assert_match(/^wizard 3\.8\.10$/, shell_output("#{bin}/wizard --version"))
  end
end
