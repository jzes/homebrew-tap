class Morse < Formula
  desc "Decode Morse code in the terminal"
  homepage "https://github.com/jzes/morse"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jzes/morse/releases/download/v0.1.1/morse_v0.1.1_darwin_arm64.tar.gz"
      sha256 "524f7d93d79e95e8790b8e228f2b257eb91cf5e7e530762a8cfdf15d096ddd6d"
    end
    on_intel do
      url "https://github.com/jzes/morse/releases/download/v0.1.1/morse_v0.1.1_darwin_amd64.tar.gz"
      sha256 "f0cfa124ec540d049aa28e32ed9dfc5cb9ad0ba6024776f4c8bce83d37364c06"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jzes/morse/releases/download/v0.1.1/morse_v0.1.1_linux_arm64.tar.gz"
      sha256 "975e651f9aefa7b530b5ec928c9088fafeab152594d92b9fa54c74a8f3a14b94"
    end
    on_intel do
      url "https://github.com/jzes/morse/releases/download/v0.1.1/morse_v0.1.1_linux_amd64.tar.gz"
      sha256 "ab28076fe84be7fa4fa74a555503248c217502ed3cf4deb58a419e52d127c78e"
    end
  end

  def install
    bin.install "morse"
  end

  test do
    assert_equal "sos\n", shell_output("#{bin}/morse '... --- ...'")
    assert_equal "hello world\n",
                 pipe_output(bin/"morse", ".... . .-.. .-.. ---  .-- --- .-. .-.. -..", 0)
  end
end
