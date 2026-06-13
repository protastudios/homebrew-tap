class Splat < Formula
  desc "Splat command line interface for trading, auth, transfers, and automation"
  homepage "https://asksplat.com"
  version "1.0.93"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/protastudios/splat-cli-releases/releases/download/v1.0.93/splat_1.0.93_darwin_arm64.tar.gz"
      sha256 "05556b165862f3d66d87bf8cf53fefd278935ff6c2fcdde341749200edae5de7"
    else
      url "https://github.com/protastudios/splat-cli-releases/releases/download/v1.0.93/splat_1.0.93_darwin_x64.tar.gz"
      sha256 "5761a0936e27e2b1ca4fe7ffeee369d752c02623524c92218e27eb15b5228b73"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/protastudios/splat-cli-releases/releases/download/v1.0.93/splat_1.0.93_linux_arm64.tar.gz"
      sha256 "0d897058a75198ad633fd470e2f495558f8c7125685e7873bbaaac0175acbd2c"
    else
      url "https://github.com/protastudios/splat-cli-releases/releases/download/v1.0.93/splat_1.0.93_linux_x64_baseline.tar.gz"
      sha256 "15eac45e7c80f929ccf627fc1c16970109d9ebf9f318c12d417e5529ba0a2dca"
    end
  end

  def install
    bin.install Dir["**/splat"].first => "splat"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/splat --help")
  end
end
