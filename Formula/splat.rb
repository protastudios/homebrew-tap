class Splat < Formula
  desc "Splat command line interface for trading, auth, transfers, and automation"
  homepage "https://asksplat.com"
  version "1.0.66"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/protastudios/splat-cli-releases/releases/download/v1.0.66/splat_1.0.66_darwin_arm64.tar.gz"
      sha256 "8af92b431ca4b8c77f914ccf4719a165a3cb0716609fbc3ac040774187536245"
    else
      url "https://github.com/protastudios/splat-cli-releases/releases/download/v1.0.66/splat_1.0.66_darwin_x64.tar.gz"
      sha256 "2686b5e02a91510640e64dc165abd7f6a44a80ec9d8f2df4fb0b5111f6972088"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/protastudios/splat-cli-releases/releases/download/v1.0.66/splat_1.0.66_linux_arm64.tar.gz"
      sha256 "c850e6e65bb3acdb4731626cc02e71013e2cb9f417b5a09299852e24897a008f"
    else
      url "https://github.com/protastudios/splat-cli-releases/releases/download/v1.0.66/splat_1.0.66_linux_x64_baseline.tar.gz"
      sha256 "bda34586285f29fdf36edec12896865e55736d48441db03179c8740cb33859d2"
    end
  end

  def install
    bin.install Dir["**/splat"].first => "splat"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/splat --help")
  end
end
