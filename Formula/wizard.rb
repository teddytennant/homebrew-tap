class Wizard < Formula
  desc "One line. Your sovereign agent. Self-extending. Bring any model"
  homepage "https://github.com/teddytennant/wizard"
  license all_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/teddytennant/wizard/releases/download/v3.8.11/wizard-aarch64-apple-darwin.tar.gz"
      sha256 "cd7cb84136d6e81cde4b946ccb74caa231dfb7f9d958198311b3ce9b3f534413"
    end
    on_intel do
      url "https://github.com/teddytennant/wizard/releases/download/v3.8.11/wizard-x86_64-apple-darwin.tar.gz"
      sha256 "7304f38caae386306de11514ac16aee9cf00f9703ef5d637563f6565185b71a5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/teddytennant/wizard/releases/download/v3.8.11/wizard-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4ac2c6477fedc54e6a46537654b40b0c922eba88b3039fd0042db3702da4e567"
    end
    on_intel do
      url "https://github.com/teddytennant/wizard/releases/download/v3.8.11/wizard-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a69956b9c6e28aaa9a2c9316d38e73cf46e4357d93d7830cf6e93b6a4adf37cf"
    end
  end

  def install
    bin.install "wizard", "wizard-ui-opencode", "wizard-ui-pi", "wizard-ui-codex", "wizard-ui-grok",
                "wizard-ui-jcode"
  end

  test do
    assert_match(/^wizard 3\.8\.11$/, shell_output("#{bin}/wizard --version"))
  end
end
