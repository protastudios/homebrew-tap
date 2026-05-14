class Splat < Formula
  desc "Splat command line interface for trading, auth, transfers, and automation"
  homepage "https://asksplat.com"
  version "1.0.77"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/protastudios/splat-cli-releases/releases/download/v1.0.77/splat_1.0.77_darwin_arm64.tar.gz"
      sha256 "ae07ed9dc145b3cc91aafbdb797521de14769837e6acc37172b59f98fd98f83a"
    else
      url "https://github.com/protastudios/splat-cli-releases/releases/download/v1.0.77/splat_1.0.77_darwin_x64.tar.gz"
      sha256 "caa3a29da2771b6d2efa0fe302350f3974b34c4c9c1833f0e36f5348bea85c22"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/protastudios/splat-cli-releases/releases/download/v1.0.77/splat_1.0.77_linux_arm64.tar.gz"
      sha256 "bb4888d0e33a75588de98b4afbd063b33738794d7fd31de1e7ab29c4b0b9c3d0"
    else
      url "https://github.com/protastudios/splat-cli-releases/releases/download/v1.0.77/splat_1.0.77_linux_x64_baseline.tar.gz"
      sha256 "9197c25e0d6847064edf582d2c16f791674551b17dcb6a2c45c70183395ee789"
    end
  end

  def install
    bin.install Dir["**/splat"].first => "splat"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/splat --help")
  end
end
