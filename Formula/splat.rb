class Splat < Formula
  desc "Splat command line interface for trading, auth, transfers, and automation"
  homepage "https://asksplat.com"
  version "1.0.78"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/protastudios/splat-cli-releases/releases/download/v1.0.78/splat_1.0.78_darwin_arm64.tar.gz"
      sha256 "462c4ffbca4eea9b11a0f7e52e9540aeb1ec28fbb2120bdb2c8413862eab9783"
    else
      url "https://github.com/protastudios/splat-cli-releases/releases/download/v1.0.78/splat_1.0.78_darwin_x64.tar.gz"
      sha256 "d8c2dd57b336be19773dad9f724ae60ed08f7da81842b4cdd11ce13832a37701"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/protastudios/splat-cli-releases/releases/download/v1.0.78/splat_1.0.78_linux_arm64.tar.gz"
      sha256 "6db1c52faae2de8a814545cd0e6e04a6cca1febe58afd17c34f7d332ce33ec0e"
    else
      url "https://github.com/protastudios/splat-cli-releases/releases/download/v1.0.78/splat_1.0.78_linux_x64_baseline.tar.gz"
      sha256 "d5adf6273ef360d1fc54ad5d7d116e0ed11ce220279b1fc8b6d17cef72f5cfb8"
    end
  end

  def install
    bin.install Dir["**/splat"].first => "splat"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/splat --help")
  end
end
