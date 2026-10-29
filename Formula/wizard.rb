class Wizard < Formula
  desc "One line. Your sovereign agent. Self-extending. Bring any model"
  homepage "https://github.com/teddytennant/wizard"
  license all_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/teddytennant/wizard/releases/download/v3.11.0/wizard-aarch64-apple-darwin.tar.gz"
      sha256 "7972321025147329b8637547a867a9b5c452db3ab29ba108896ea7cdba3cf2ec"
    end
    on_intel do
      url "https://github.com/teddytennant/wizard/releases/download/v3.11.0/wizard-x86_64-apple-darwin.tar.gz"
      sha256 "56d4f03efb10d74bd4705ac31beecbbcc937e699e41d608359d007153e3c9481"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/teddytennant/wizard/releases/download/v3.11.0/wizard-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c6d4e5904f6814dc3535e94b05f7b812514c428a4200f071c38f6354f13d11c3"
    end
    on_intel do
      url "https://github.com/teddytennant/wizard/releases/download/v3.11.0/wizard-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "61af62352e3dae1de873fbcdba65488418f2992902e9c019336ff2ae89d3624a"
    end
  end

  def install
    bin.install "wizard", "wizard-ui-opencode", "wizard-ui-pi", "wizard-ui-codex", "wizard-ui-grok",
                "wizard-ui-jcode", "wizard-ui-claude"
  end

  test do
    assert_match(/^wizard 3\.11$/, shell_output("#{bin}/wizard --version"))
  end
end
