class Wizard < Formula
  desc "One line. Your sovereign agent. Self-extending. Bring any model"
  homepage "https://github.com/teddytennant/wizard"
  license all_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/teddytennant/wizard/releases/download/v3.8.9/wizard-aarch64-apple-darwin.tar.gz"
      sha256 "a4190051aa74bc70a20499e96c9d1ae2154529e95b4820fcf8e64f2788b07b53"
    end
    on_intel do
      url "https://github.com/teddytennant/wizard/releases/download/v3.8.9/wizard-x86_64-apple-darwin.tar.gz"
      sha256 "acd75a42d5b25ae215df25af342955a72828c63595d1acfe2297d73d1c192267"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/teddytennant/wizard/releases/download/v3.8.9/wizard-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "edfa427ecf0417299dec97a443f866f478f6370e50a46f93d341744f60bf7925"
    end
    on_intel do
      url "https://github.com/teddytennant/wizard/releases/download/v3.8.9/wizard-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b5207365b1108535c46d0e63ddf9689eda03e1a93ad577c74919545c1649fb80"
    end
  end

  def install
    bin.install "wizard", "wizard-ui-opencode", "wizard-ui-pi", "wizard-ui-codex", "wizard-ui-grok"
  end

  test do
    assert_match(/^wizard 3\.8\.9$/, shell_output("#{bin}/wizard --version"))
  end
end
