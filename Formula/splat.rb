class Splat < Formula
  desc "Splat command line interface for trading, auth, transfers, and automation"
  homepage "https://asksplat.com"
  version "1.0.70"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/protastudios/splat-cli-releases/releases/download/v1.0.70/splat_1.0.70_darwin_arm64.tar.gz"
      sha256 "2d8ea80b7e2c421b5b4af26fdc767a9de93c7c367ccbe158c9e78eee68fc46b0"
    else
      url "https://github.com/protastudios/splat-cli-releases/releases/download/v1.0.70/splat_1.0.70_darwin_x64.tar.gz"
      sha256 "01678857d539b6951d1e153068139841c0aa9b9b33820e62510409a0885d5d8b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/protastudios/splat-cli-releases/releases/download/v1.0.70/splat_1.0.70_linux_arm64.tar.gz"
      sha256 "7e3f6edeb2299a016966fbb6d44a1150e4dd16f937935a4043efaa21e00160e9"
    else
      url "https://github.com/protastudios/splat-cli-releases/releases/download/v1.0.70/splat_1.0.70_linux_x64_baseline.tar.gz"
      sha256 "0cd61cd17f364217dcbcf8aa150729b0ed2cda6b5e28db42174349e43f39f1f0"
    end
  end

  def install
    bin.install Dir["**/splat"].first => "splat"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/splat --help")
  end
end
