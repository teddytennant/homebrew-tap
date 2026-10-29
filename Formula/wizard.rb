class Wizard < Formula
  desc "One line. Your sovereign agent. Self-extending. Bring any model"
  homepage "https://github.com/teddytennant/wizard"
  license all_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/teddytennant/wizard/releases/download/v3.11.2/wizard-aarch64-apple-darwin.tar.gz"
      sha256 "d81688910861f2c1bb60baec1f78e7833a673821bb637bb6839612394c834f19"
    end
    on_intel do
      url "https://github.com/teddytennant/wizard/releases/download/v3.11.2/wizard-x86_64-apple-darwin.tar.gz"
      sha256 "ded2409f0a505a2276dabab261ad164d567416366022a880eb660726a700157a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/teddytennant/wizard/releases/download/v3.11.2/wizard-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "183fee444ef5057e7291fd7d76ddc2d95094f4f7c99a1afc34922728c5f0e7d5"
    end
    on_intel do
      url "https://github.com/teddytennant/wizard/releases/download/v3.11.2/wizard-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "258eda2803bbf5c63c5158134052823ff94356e98ca869b94000a3095542a76f"
    end
  end

  def install
    bin.install "wizard", "wizard-ui-opencode", "wizard-ui-pi", "wizard-ui-codex", "wizard-ui-grok",
                "wizard-ui-jcode", "wizard-ui-claude"
  end

  test do
    assert_match(/^wizard 3\.11\.2$/, shell_output("#{bin}/wizard --version"))
  end
end
