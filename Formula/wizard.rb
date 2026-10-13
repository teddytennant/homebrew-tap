class Wizard < Formula
  desc "One line. Your sovereign agent. Self-extending. Bring any model"
  homepage "https://github.com/teddytennant/wizard"
  license all_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/teddytennant/wizard/releases/download/v3.8.6/wizard-aarch64-apple-darwin.tar.gz"
      sha256 "44fc713f66a1887dbcdf6cbdc62ef85e4dd2f702c15c370ebec41f58d6383c24"
    end
    on_intel do
      url "https://github.com/teddytennant/wizard/releases/download/v3.8.6/wizard-x86_64-apple-darwin.tar.gz"
      sha256 "bdc07effd1faab69f42e1eb0c0ecbcd7c1b96fbeb874fe96165e395c618b0937"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/teddytennant/wizard/releases/download/v3.8.6/wizard-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0190c403fdcb0961fcccf1c2c81339d3456f39191963e87241c7ce045f1ee09f"
    end
    on_intel do
      url "https://github.com/teddytennant/wizard/releases/download/v3.8.6/wizard-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b0ab5d76e13c81919a9fe5c67c92fa8e3d074def0104c200ef085a4bab68f80a"
    end
  end

  def install
    bin.install "wizard", "wizard-ui-opencode", "wizard-ui-pi", "wizard-ui-codex", "wizard-ui-grok"
  end

  test do
    assert_match(/^wizard 3\.8\.6$/, shell_output("#{bin}/wizard --version"))
  end
end
