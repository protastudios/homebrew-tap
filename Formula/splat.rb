class Splat < Formula
  desc "Splat command line interface for trading, auth, transfers, and automation"
  homepage "https://asksplat.com"
  version "1.0.73"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/protastudios/splat-cli-releases/releases/download/v1.0.73/splat_1.0.73_darwin_arm64.tar.gz"
      sha256 "b7752e86d0c0222fa397905d5d475aa799802937a9f72593015f7d40b45cc8b1"
    else
      url "https://github.com/protastudios/splat-cli-releases/releases/download/v1.0.73/splat_1.0.73_darwin_x64.tar.gz"
      sha256 "0bbd14a882a621527b4e425b741207785d9e1f9de2f0b0f5646870b11813333c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/protastudios/splat-cli-releases/releases/download/v1.0.73/splat_1.0.73_linux_arm64.tar.gz"
      sha256 "1b2c432c321aa41e6ce95b2c62c085ea9fd07adf27d27579841893dc2a009cb0"
    else
      url "https://github.com/protastudios/splat-cli-releases/releases/download/v1.0.73/splat_1.0.73_linux_x64_baseline.tar.gz"
      sha256 "eabbf7befa0483b2c1cbf70ab93d711ab3d402af46e8eb596cee63d07c100f09"
    end
  end

  def install
    bin.install Dir["**/splat"].first => "splat"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/splat --help")
  end
end
