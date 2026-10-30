class Wizard < Formula
  desc "One line. Your sovereign agent. Self-extending. Bring any model"
  homepage "https://github.com/teddytennant/wizard"
  license all_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/teddytennant/wizard/releases/download/v3.12.0/wizard-aarch64-apple-darwin.tar.gz"
      sha256 "ade384355a5cc7b9ad7c2c1ed16fe0b72e0b906f4a98d435366df1db47c68dca"
    end
    on_intel do
      url "https://github.com/teddytennant/wizard/releases/download/v3.12.0/wizard-x86_64-apple-darwin.tar.gz"
      sha256 "d2080a476e3b7d439e8362ab62e1741969accaaf9a9d444da678adc8f8c9d812"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/teddytennant/wizard/releases/download/v3.12.0/wizard-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "421f32057103d23a83176b5e54264ef68dfde9c45282951743f71b401e4c5aa1"
    end
    on_intel do
      url "https://github.com/teddytennant/wizard/releases/download/v3.12.0/wizard-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1ebeecdfbbf973f8f87b70553c279670c0f15cb7c768b266c0f3cb752fd3cffa"
    end
  end

  def install
    bin.install "wizard", "wizard-ui-opencode", "wizard-ui-pi", "wizard-ui-codex", "wizard-ui-grok",
                "wizard-ui-jcode", "wizard-ui-claude"
  end

  test do
    assert_match(/^wizard 3\.12$/, shell_output("#{bin}/wizard --version"))
  end
end
