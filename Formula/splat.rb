class Splat < Formula
  desc "Splat command line interface for trading, auth, transfers, and automation"
  homepage "https://asksplat.com"
  version "1.0.89"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/protastudios/splat-cli-releases/releases/download/v1.0.89/splat_1.0.89_darwin_arm64.tar.gz"
      sha256 "cfce1de497a871f8e186538f4085b6b58766fc42774c87c7006cee7bd11554c7"
    else
      url "https://github.com/protastudios/splat-cli-releases/releases/download/v1.0.89/splat_1.0.89_darwin_x64.tar.gz"
      sha256 "022190186537ef4aa3b8381dcc995b92e11d25e4e04fdbbe11e2159051edcfee"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/protastudios/splat-cli-releases/releases/download/v1.0.89/splat_1.0.89_linux_arm64.tar.gz"
      sha256 "e97fbbbe7de6ea8752cf6a27ad2de6b3240aee8ba06b8ccf3e3f7a5fc8bfad7f"
    else
      url "https://github.com/protastudios/splat-cli-releases/releases/download/v1.0.89/splat_1.0.89_linux_x64_baseline.tar.gz"
      sha256 "add6b23d591932fe226fa41947568f759214f220572ef5cd284541b76ed3ad4d"
    end
  end

  def install
    bin.install Dir["**/splat"].first => "splat"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/splat --help")
  end
end
