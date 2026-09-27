class Wizard < Formula
  desc "One line. Your sovereign agent. Self-extending. Bring any model"
  homepage "https://github.com/teddytennant/wizard"
  license all_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_arm do
      url "https://github.com/teddytennant/wizard/releases/download/v3.5.1/wizard-aarch64-apple-darwin.tar.gz"
      sha256 "75a41ca679ea4397b70d10a27fffe2e3ca25d6b838e380f7a7ac2a62ba874179"
    end
    on_intel do
      url "https://github.com/teddytennant/wizard/releases/download/v3.5.1/wizard-x86_64-apple-darwin.tar.gz"
      sha256 "6d53c58c2c1fb6c487195468b93e2643aa98ec60932bf8416837972ab7e472f8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/teddytennant/wizard/releases/download/v3.5.1/wizard-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f6786b2637b9add59c1bbc53a41e9ef8a2db26f19c32d03f15b1072a1f052424"
    end
    on_intel do
      url "https://github.com/teddytennant/wizard/releases/download/v3.5.1/wizard-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c6a46afde162205461ba3e26616731ca3468edaa032a8dabac289dfa8a1618e3"
    end
  end

  def install
    bin.install "wizard"
  end

  test do
    assert_match(/^wizard 3\.5\.1$/, shell_output("#{bin}/wizard --version"))
  end
end
