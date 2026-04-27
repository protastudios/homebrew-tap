class Splat < Formula
  desc "Splat command line interface for trading, auth, transfers, and automation"
  homepage "https://asksplat.com"
  version "1.0.64"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/protastudios/splat-cli-releases/releases/download/v1.0.64/splat_1.0.64_darwin_arm64.tar.gz"
      sha256 "4f1381fed875cd58cd10865ec3062d6f19b8bdf7fc6732a3d6693d2b5aeca9bc"
    else
      url "https://github.com/protastudios/splat-cli-releases/releases/download/v1.0.64/splat_1.0.64_darwin_x64.tar.gz"
      sha256 "4e937c69704f8b79529ebcc92c8baec67f7939c86d527797847febb0eea79508"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/protastudios/splat-cli-releases/releases/download/v1.0.64/splat_1.0.64_linux_arm64.tar.gz"
      sha256 "83902e69524d801ec854a25fa9e039856918bf4fcdb3caa104aac89b331d7d3c"
    else
      url "https://github.com/protastudios/splat-cli-releases/releases/download/v1.0.64/splat_1.0.64_linux_x64_baseline.tar.gz"
      sha256 "a1ea78a53a5c55c8deabc599531b34113bcd18a7b954603fa0288e56e8409eb1"
    end
  end

  def install
    bin.install Dir["**/splat"].first => "splat"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/splat --help")
  end
end
