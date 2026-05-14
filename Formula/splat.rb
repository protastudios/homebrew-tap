class Splat < Formula
  desc "Splat command line interface for trading, auth, transfers, and automation"
  homepage "https://asksplat.com"
  version "1.0.74"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/protastudios/splat-cli-releases/releases/download/v1.0.74/splat_1.0.74_darwin_arm64.tar.gz"
      sha256 "0271ace249016e856370cc9e13c98b5ceb12dff111a152c076efd4a920c7bce4"
    else
      url "https://github.com/protastudios/splat-cli-releases/releases/download/v1.0.74/splat_1.0.74_darwin_x64.tar.gz"
      sha256 "297441e98d3df6c8635ee590c57f0c4c0cd95f60872fa0ee5f9a90d7aca219e7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/protastudios/splat-cli-releases/releases/download/v1.0.74/splat_1.0.74_linux_arm64.tar.gz"
      sha256 "eaeff924c9abbac40dbbd1ba1b28425df1ea21feac1052dd21581c20185ad5d5"
    else
      url "https://github.com/protastudios/splat-cli-releases/releases/download/v1.0.74/splat_1.0.74_linux_x64_baseline.tar.gz"
      sha256 "1f09a896a265609dd62e34ed9fce35731b86a63a88c46e23f7d1c646190f3df1"
    end
  end

  def install
    bin.install Dir["**/splat"].first => "splat"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/splat --help")
  end
end
