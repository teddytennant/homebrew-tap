class Wizard < Formula
  desc "One line. Your sovereign agent. Self-extending. Bring any model"
  homepage "https://github.com/teddytennant/wizard"
  license all_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/teddytennant/wizard/releases/download/v2026.11.19/wizard-aarch64-apple-darwin.tar.gz"
      sha256 "61029e2c237ed683e4ec1f7504f7def08843b9cdff8d4e9dbf092eaabd047a67"
    end
    on_intel do
      url "https://github.com/teddytennant/wizard/releases/download/v2026.11.19/wizard-x86_64-apple-darwin.tar.gz"
      sha256 "eb70c56c3c32658a5550ad1a6504c93ce6c784361b80ed117a50031db6616110"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/teddytennant/wizard/releases/download/v2026.11.19/wizard-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8b8612553dae5622d70b23736c4a2e7ec1ed3c5e703973dfaa6e923c6ea9207a"
    end
    on_intel do
      url "https://github.com/teddytennant/wizard/releases/download/v2026.11.19/wizard-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c20bf1777996b101873375e9bbb45a2d3ebd9009b605b27e878a615d0ff0c280"
    end
  end

  def install
    bin.install "wizard", "wizard-ui-opencode", "wizard-ui-pi", "wizard-ui-codex", "wizard-ui-grok",
                "wizard-ui-jcode", "wizard-ui-claude"
  end

  test do
    assert_match(/^wizard 2026\.11\.19$/, shell_output("#{bin}/wizard --version"))
  end
end
