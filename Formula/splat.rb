class Splat < Formula
  desc "Splat command line interface for trading, auth, transfers, and automation"
  homepage "https://asksplat.com"
  version "1.0.86"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/protastudios/splat-cli-releases/releases/download/v1.0.86/splat_1.0.86_darwin_arm64.tar.gz"
      sha256 "14b210ac224ebe1516211a4664fdc2b681052cc4c03d2a3d16097af26fe1f9a1"
    else
      url "https://github.com/protastudios/splat-cli-releases/releases/download/v1.0.86/splat_1.0.86_darwin_x64.tar.gz"
      sha256 "c05c1f95e301bdb34dfeb4507f111ecad2caaa26016d3e0d4859f129c4a53158"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/protastudios/splat-cli-releases/releases/download/v1.0.86/splat_1.0.86_linux_arm64.tar.gz"
      sha256 "e2ca4982f1e69f200f581e867a55392b3683807c8209dd99bc3b62787ee68eb5"
    else
      url "https://github.com/protastudios/splat-cli-releases/releases/download/v1.0.86/splat_1.0.86_linux_x64_baseline.tar.gz"
      sha256 "d44661e57cda4b29080e8b44e2c0ff8e45bf01de83dd3b4522eab4a74ebb2936"
    end
  end

  def install
    bin.install Dir["**/splat"].first => "splat"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/splat --help")
  end
end
