class Splat < Formula
  desc "Splat command line interface for trading, auth, transfers, and automation"
  homepage "https://asksplat.com"
  version "1.0.79"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/protastudios/splat-cli-releases/releases/download/v1.0.79/splat_1.0.79_darwin_arm64.tar.gz"
      sha256 "f793b2b2cfec0cfca445dd90417e5afd92fecf5b56dc8330bd8ef562a73f06ca"
    else
      url "https://github.com/protastudios/splat-cli-releases/releases/download/v1.0.79/splat_1.0.79_darwin_x64.tar.gz"
      sha256 "c1c9dcb9a16286c18426d539b4b77b7a2e927dfe1b8e8f170d9d3e379569c339"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/protastudios/splat-cli-releases/releases/download/v1.0.79/splat_1.0.79_linux_arm64.tar.gz"
      sha256 "0cf5c065a1d0c0b005f4a4aa8c2e3c74dd2c0c32425abd4abce7785189c85c71"
    else
      url "https://github.com/protastudios/splat-cli-releases/releases/download/v1.0.79/splat_1.0.79_linux_x64_baseline.tar.gz"
      sha256 "60a10f15b840e9f05296f1332ee62f86a1aeb35058d34786051e1a42c9a916c2"
    end
  end

  def install
    bin.install Dir["**/splat"].first => "splat"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/splat --help")
  end
end
