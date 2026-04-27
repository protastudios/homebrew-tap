class Splat < Formula
  desc "Splat command line interface for trading, auth, transfers, and automation"
  homepage "https://asksplat.com"
  version "1.0.62"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/protastudios/splat-cli-releases/releases/download/v1.0.62/splat_1.0.62_darwin_arm64.tar.gz"
      sha256 "f2472a8166f4e65522ac373746aab01facd003cb6e1e3b7ad10bca17d3ec4219"
    else
      url "https://github.com/protastudios/splat-cli-releases/releases/download/v1.0.62/splat_1.0.62_darwin_x64.tar.gz"
      sha256 "01eb557ff3322226e373fd6cb36116b2184733d0f0aa332977b423c43ac52836"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/protastudios/splat-cli-releases/releases/download/v1.0.62/splat_1.0.62_linux_arm64.tar.gz"
      sha256 "4dc3b7b9b7700908ce41214631b8ebc8f92218323985ce5208d6d30320354f51"
    else
      url "https://github.com/protastudios/splat-cli-releases/releases/download/v1.0.62/splat_1.0.62_linux_x64_baseline.tar.gz"
      sha256 "2949ac4bf3a4b439cd1c79667deb72ad01fe43303dad6add32378f11e97149c9"
    end
  end

  def install
    bin.install Dir["**/splat"].first => "splat"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/splat --help")
  end
end
