class Splat < Formula
  desc "Splat command line interface for trading, auth, transfers, and automation"
  homepage "https://asksplat.com"
  version "1.0.65"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/protastudios/splat-cli-releases/releases/download/v1.0.65/splat_1.0.65_darwin_arm64.tar.gz"
      sha256 "8fe66907a66e7552fb6e3c151546d3a4b6a1908752a108a123f77e3339a59758"
    else
      url "https://github.com/protastudios/splat-cli-releases/releases/download/v1.0.65/splat_1.0.65_darwin_x64.tar.gz"
      sha256 "076924caecf36ad06e34ba8887912a3f1a379829ff641697b40996b3c89aa452"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/protastudios/splat-cli-releases/releases/download/v1.0.65/splat_1.0.65_linux_arm64.tar.gz"
      sha256 "e2299a39032e750c5d85690cdc81001a4c8d63e3927d7d695917ee28dba49220"
    else
      url "https://github.com/protastudios/splat-cli-releases/releases/download/v1.0.65/splat_1.0.65_linux_x64_baseline.tar.gz"
      sha256 "049164d72a661f2fcb7f6e5c87d81dcfd0aac936a1c8da3d2b290d28b0118767"
    end
  end

  def install
    bin.install Dir["**/splat"].first => "splat"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/splat --help")
  end
end
