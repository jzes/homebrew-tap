class Reqman < Formula
  desc "Terminal HTTP client for file-based requests"
  homepage "https://github.com/jzes/reqman"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jzes/reqman/releases/download/v0.2.0/reqman_0.2.0_darwin_arm64.tar.gz"
      sha256 "9ea1ec3ce57ba68df7be753ffa0cdd5bf1516c20dea8e9f69c304b605e832caf"
    end
    on_intel do
      url "https://github.com/jzes/reqman/releases/download/v0.2.0/reqman_0.2.0_darwin_amd64.tar.gz"
      sha256 "acc3cfb54a624cb50aaad997d0aa89ecb47b1888b5abfc2fcf362b7aa51254fa"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jzes/reqman/releases/download/v0.2.0/reqman_0.2.0_linux_arm64.tar.gz"
      sha256 "23cccb7c42f97fc676d5d7e543f2b2a171be67378da90dfc0bf590232b3cc129"
    end
    on_intel do
      url "https://github.com/jzes/reqman/releases/download/v0.2.0/reqman_0.2.0_linux_amd64.tar.gz"
      sha256 "a72f44985fa53e3e55590612342d88e6bef53e9b957e182fcd66ec09c0c1f83c"
    end
  end

  def install
    bin.install "reqman"
  end

  test do
    # Exercise startup and config creation without requiring an interactive TTY.
    output = shell_output("#{bin}/reqman #{testpath}/missing 2>&1", 1)
    assert_match "Error listing requests", output
    assert_match "editor-mode: internal", (testpath/".config/reqman/config.yaml").read
  end
end
