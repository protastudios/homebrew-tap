class Splat < Formula
  desc "Splat command line interface for trading, auth, transfers, and automation"
  homepage "https://asksplat.com"
  version "1.0.67"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/protastudios/splat-cli-releases/releases/download/v1.0.67/splat_1.0.67_darwin_arm64.tar.gz"
      sha256 "451f245db823468022412dfb5886a0b14d9d29b6156309e69e0b2acbc875173d"
    else
      url "https://github.com/protastudios/splat-cli-releases/releases/download/v1.0.67/splat_1.0.67_darwin_x64.tar.gz"
      sha256 "e2abea7f6522a57c9b1564dbb5889297af187ddb066ceaec828f51f6e7a8d21a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/protastudios/splat-cli-releases/releases/download/v1.0.67/splat_1.0.67_linux_arm64.tar.gz"
      sha256 "00ef76322e9fb48064c7df7793b56de7d973733a21def04f93b7e215b6644af2"
    else
      url "https://github.com/protastudios/splat-cli-releases/releases/download/v1.0.67/splat_1.0.67_linux_x64_baseline.tar.gz"
      sha256 "6de738b05dd1aecaae4f4eee4a99ba8959d3daba9ab91f2c723b6c6e4f021381"
    end
  end

  def install
    bin.install Dir["**/splat"].first => "splat"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/splat --help")
  end
end
