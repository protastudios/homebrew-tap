class Splat < Formula
  desc "Splat command line interface for trading, auth, transfers, and automation"
  homepage "https://asksplat.com"
  version "1.0.63"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/protastudios/splat-cli-releases/releases/download/v1.0.63/splat_1.0.63_darwin_arm64.tar.gz"
      sha256 "850e9a791353aa5e5d3f557379e5e1d72f7b6914fd430748f17547ba6dab4ce7"
    else
      url "https://github.com/protastudios/splat-cli-releases/releases/download/v1.0.63/splat_1.0.63_darwin_x64.tar.gz"
      sha256 "ce3a80f6e0a8af935a092d7eb34468876de5d0659ed304ec2d486ad738455e2c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/protastudios/splat-cli-releases/releases/download/v1.0.63/splat_1.0.63_linux_arm64.tar.gz"
      sha256 "44638a5fc28d30b8d2fd98b390996e560fc3738396e55f1623f0c66e20e9e38d"
    else
      url "https://github.com/protastudios/splat-cli-releases/releases/download/v1.0.63/splat_1.0.63_linux_x64_baseline.tar.gz"
      sha256 "342764c0161ba4d4b2198007679c8fccfbd53808a3f2e98ef464c1c1093807db"
    end
  end

  def install
    bin.install Dir["**/splat"].first => "splat"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/splat --help")
  end
end
