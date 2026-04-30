class Splat < Formula
  desc "Splat command line interface for trading, auth, transfers, and automation"
  homepage "https://asksplat.com"
  version "1.0.69"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/protastudios/splat-cli-releases/releases/download/v1.0.69/splat_1.0.69_darwin_arm64.tar.gz"
      sha256 "46be8e3ccf938cc46b09bbd83f1e0eb8000b9d0b6b9ead22bce44a4bc943966e"
    else
      url "https://github.com/protastudios/splat-cli-releases/releases/download/v1.0.69/splat_1.0.69_darwin_x64.tar.gz"
      sha256 "394de95a60ebf1d9af0852c9be1ffc5152212fcf1db15f3e967fa642ef7b4441"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/protastudios/splat-cli-releases/releases/download/v1.0.69/splat_1.0.69_linux_arm64.tar.gz"
      sha256 "d20ed738391a6811db591facb3a59f3e597f7b8df4ec6e3e3e30469bc3a10898"
    else
      url "https://github.com/protastudios/splat-cli-releases/releases/download/v1.0.69/splat_1.0.69_linux_x64_baseline.tar.gz"
      sha256 "29ce76dc82568164242c752e589d30ae3832dae71eb1b23fec5223136a5fef73"
    end
  end

  def install
    bin.install Dir["**/splat"].first => "splat"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/splat --help")
  end
end
