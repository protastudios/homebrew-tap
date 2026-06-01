class Splat < Formula
  desc "Splat command line interface for trading, auth, transfers, and automation"
  homepage "https://asksplat.com"
  version "1.0.91"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/protastudios/splat-cli-releases/releases/download/v1.0.91/splat_1.0.91_darwin_arm64.tar.gz"
      sha256 "c02b6baa8a596c72ca61d47de3928c352505b8a59ded8001e8c778ebbd25cdcd"
    else
      url "https://github.com/protastudios/splat-cli-releases/releases/download/v1.0.91/splat_1.0.91_darwin_x64.tar.gz"
      sha256 "a4673644b81b0bb9e979c40857ad2c9e94adaea81adb6ce8fd7ba7c56d0a3772"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/protastudios/splat-cli-releases/releases/download/v1.0.91/splat_1.0.91_linux_arm64.tar.gz"
      sha256 "dafcdd3f8442c6c17dd2cc0b4838fbd079d0f38e4950e37c760d933f0196bd5f"
    else
      url "https://github.com/protastudios/splat-cli-releases/releases/download/v1.0.91/splat_1.0.91_linux_x64_baseline.tar.gz"
      sha256 "d6fb6812ae1666bab5fbe5c3b933c3df71ba1e017ab6955fe7ed4ee0196a84ff"
    end
  end

  def install
    bin.install Dir["**/splat"].first => "splat"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/splat --help")
  end
end
