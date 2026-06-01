class Splat < Formula
  desc "Splat command line interface for trading, auth, transfers, and automation"
  homepage "https://asksplat.com"
  version "1.0.90"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/protastudios/splat-cli-releases/releases/download/v1.0.90/splat_1.0.90_darwin_arm64.tar.gz"
      sha256 "b09964de9f8b5d31ad2de1a96c2330320709056347c48516c265ad4574dede1d"
    else
      url "https://github.com/protastudios/splat-cli-releases/releases/download/v1.0.90/splat_1.0.90_darwin_x64.tar.gz"
      sha256 "182d840280f23f3185912519261045da78b6f6587e911d999d9a52d0a4bf5c06"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/protastudios/splat-cli-releases/releases/download/v1.0.90/splat_1.0.90_linux_arm64.tar.gz"
      sha256 "ac1d31fc54ca23bb8a9c52d6716df1f494de4d1e9a41ef0a923ce421002013d2"
    else
      url "https://github.com/protastudios/splat-cli-releases/releases/download/v1.0.90/splat_1.0.90_linux_x64_baseline.tar.gz"
      sha256 "3613430875c06db27cec74983827d0b0e74c41c06ab15e96557f9f0b98c1cacb"
    end
  end

  def install
    bin.install Dir["**/splat"].first => "splat"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/splat --help")
  end
end
