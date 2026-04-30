class Splat < Formula
  desc "Splat command line interface for trading, auth, transfers, and automation"
  homepage "https://asksplat.com"
  version "1.0.71"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/protastudios/splat-cli-releases/releases/download/v1.0.71/splat_1.0.71_darwin_arm64.tar.gz"
      sha256 "e9230d29c3cb57313d0281cfc20636c2a21a611bab515280c1a966f45297cc17"
    else
      url "https://github.com/protastudios/splat-cli-releases/releases/download/v1.0.71/splat_1.0.71_darwin_x64.tar.gz"
      sha256 "de343af0d09bcba78d07aa89a7b5c64fe59a4605f01ec5887bfc1012e4668674"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/protastudios/splat-cli-releases/releases/download/v1.0.71/splat_1.0.71_linux_arm64.tar.gz"
      sha256 "e111d65db32d5d040bbbf899cccda6a76972f7932125669d97fd797d2b2551da"
    else
      url "https://github.com/protastudios/splat-cli-releases/releases/download/v1.0.71/splat_1.0.71_linux_x64_baseline.tar.gz"
      sha256 "c034c7cf1af15c753c35432feac8f8d5f9cb3e723477c77f6dd5ccedea7660b5"
    end
  end

  def install
    bin.install Dir["**/splat"].first => "splat"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/splat --help")
  end
end
