class Wizard < Formula
  desc "One line. Your sovereign agent. Self-extending. Bring any model"
  homepage "https://github.com/teddytennant/wizard"
  license all_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/teddytennant/wizard/releases/download/v3.10.0/wizard-aarch64-apple-darwin.tar.gz"
      sha256 "8a5af508116c06c8f8a7792992056250a4145499faebedb1e2611b50eba1d867"
    end
    on_intel do
      url "https://github.com/teddytennant/wizard/releases/download/v3.10.0/wizard-x86_64-apple-darwin.tar.gz"
      sha256 "b088d97e89655f49e3c34855dbff249859adf558a963c6cc26f06809e93489f3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/teddytennant/wizard/releases/download/v3.10.0/wizard-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ab66e56ea47f70324d8fae8548aa7d2d5f32f1d117ef60530c3303f99684e11e"
    end
    on_intel do
      url "https://github.com/teddytennant/wizard/releases/download/v3.10.0/wizard-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7b0cb74e1afb68b515b7e6e9f2009d93c23a9742f9359b12376307bfc2fa703e"
    end
  end

  def install
    bin.install "wizard", "wizard-ui-opencode", "wizard-ui-pi", "wizard-ui-codex", "wizard-ui-grok",
                "wizard-ui-jcode", "wizard-ui-claude"
  end

  test do
    assert_match(/^wizard 3\.10$/, shell_output("#{bin}/wizard --version"))
  end
end
