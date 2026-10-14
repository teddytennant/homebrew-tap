class Wizard < Formula
  desc "One line. Your sovereign agent. Self-extending. Bring any model"
  homepage "https://github.com/teddytennant/wizard"
  license all_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/teddytennant/wizard/releases/download/v3.8.12/wizard-aarch64-apple-darwin.tar.gz"
      sha256 "55841af6376c238413bda16208d07f942d9013fb823a3581d87d26f97ccac2b3"
    end
    on_intel do
      url "https://github.com/teddytennant/wizard/releases/download/v3.8.12/wizard-x86_64-apple-darwin.tar.gz"
      sha256 "2bbbe0c40199bc01ad094e913f4e375d1881cb8475adcc62980edc7ce299a99f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/teddytennant/wizard/releases/download/v3.8.12/wizard-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e5ee2d88eca10c850943d0e817bf5d2d0db94a74cc89593afd1fab68567a3c0e"
    end
    on_intel do
      url "https://github.com/teddytennant/wizard/releases/download/v3.8.12/wizard-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "826cd78b688ef8ee3a9922999158be715f93372518cd10a57facfca71c5ea55e"
    end
  end

  def install
    bin.install "wizard", "wizard-ui-opencode", "wizard-ui-pi", "wizard-ui-codex", "wizard-ui-grok",
                "wizard-ui-jcode"
  end

  test do
    assert_match(/^wizard 3\.8\.12$/, shell_output("#{bin}/wizard --version"))
  end
end
