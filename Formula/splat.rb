class Splat < Formula
  desc "Splat command line interface for trading, auth, transfers, and automation"
  homepage "https://asksplat.com"
  version "1.0.64"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/protastudios/splat-cli-releases/releases/download/v1.0.64/splat_1.0.64_darwin_arm64.tar.gz"
      sha256 "b2647606d97cbc06df84b7860b5913a3eb2d0125cf2ed5db2100f9ddfa659440"
    else
      url "https://github.com/protastudios/splat-cli-releases/releases/download/v1.0.64/splat_1.0.64_darwin_x64.tar.gz"
      sha256 "27dbba03d6fb33539f4fe1d1b01976dfe33bbc9ca79217f9e127449ff01996d9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/protastudios/splat-cli-releases/releases/download/v1.0.64/splat_1.0.64_linux_arm64.tar.gz"
      sha256 "c25f933fe009688f42f12473fcf13dd7dc6f2027c25a6ed93a3da1ce3fade322"
    else
      url "https://github.com/protastudios/splat-cli-releases/releases/download/v1.0.64/splat_1.0.64_linux_x64_baseline.tar.gz"
      sha256 "0bb3d662a50cf90351f02ab706ef1064acec5467125eeaa3da8e64bba81b7913"
    end
  end

  def install
    bin.install Dir["**/splat"].first => "splat"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/splat --help")
  end
end
