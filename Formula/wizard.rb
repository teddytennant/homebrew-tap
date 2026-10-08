class Wizard < Formula
  desc "One line. Your sovereign agent. Self-extending. Bring any model"
  homepage "https://github.com/teddytennant/wizard"
  license all_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/teddytennant/wizard/releases/download/v3.8.3/wizard-aarch64-apple-darwin.tar.gz"
      sha256 "6b1d94dda7ebe26d4d93ff592f9488b1dcefe45d6cd4d219b315b1f12af3f223"
    end
    on_intel do
      url "https://github.com/teddytennant/wizard/releases/download/v3.8.3/wizard-x86_64-apple-darwin.tar.gz"
      sha256 "0f1dd00ed76a0c94c513fc0973c70225850bab02fcf33a54891552ff279035fa"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/teddytennant/wizard/releases/download/v3.8.3/wizard-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7c773aca5c5ccf4f2789c33ae28cd65a4cf5fcea737556ad282211498818c19a"
    end
    on_intel do
      url "https://github.com/teddytennant/wizard/releases/download/v3.8.3/wizard-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "513e949f6d4b7146eb850008766aed6eeeeaa290bf0144fbf007bfdea984e335"
    end
  end

  def install
    bin.install "wizard", "wizard-ui-opencode", "wizard-ui-pi", "wizard-ui-codex", "wizard-ui-grok"
  end

  test do
    assert_match(/^wizard 3\.8\.3$/, shell_output("#{bin}/wizard --version"))
  end
end
