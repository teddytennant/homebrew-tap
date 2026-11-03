class Wizard < Formula
  desc "One line. Your sovereign agent. Self-extending. Bring any model"
  homepage "https://github.com/teddytennant/wizard"
  license all_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/teddytennant/wizard/releases/download/v2026.11.2/wizard-aarch64-apple-darwin.tar.gz"
      sha256 "8d8b19d7c66b55c434a83a4aca3359edbb1ebf6a6d55f7a32103b7c0e8eccc4c"
    end
    on_intel do
      url "https://github.com/teddytennant/wizard/releases/download/v2026.11.2/wizard-x86_64-apple-darwin.tar.gz"
      sha256 "1a5bfc2a5314a328417cf80dc57bb96173f941fd7afd3c0df97f97e0bc515d9f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/teddytennant/wizard/releases/download/v2026.11.2/wizard-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "58ecc1876350bc85d78d81822cd6d289b26db74fa93343fd7e3f56ec428d6129"
    end
    on_intel do
      url "https://github.com/teddytennant/wizard/releases/download/v2026.11.2/wizard-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "24e418c3aff1f47ef7ca03154b7dc60c2583427ae20d34170708d747855185c5"
    end
  end

  def install
    bin.install "wizard", "wizard-ui-opencode", "wizard-ui-pi", "wizard-ui-codex", "wizard-ui-grok",
                "wizard-ui-jcode", "wizard-ui-claude"
  end

  test do
    assert_match(/^wizard 2026\.11\.2$/, shell_output("#{bin}/wizard --version"))
  end
end
