class Splat < Formula
  desc "Splat command line interface for trading, auth, transfers, and automation"
  homepage "https://asksplat.com"
  version "1.0.84"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/protastudios/splat-cli-releases/releases/download/v1.0.84/splat_1.0.84_darwin_arm64.tar.gz"
      sha256 "72b9eacd71823692b0a61d6077fe950b8925c8f3b01bc562ca6f269f61f4fb50"
    else
      url "https://github.com/protastudios/splat-cli-releases/releases/download/v1.0.84/splat_1.0.84_darwin_x64.tar.gz"
      sha256 "0676991fffe8f111673075a3e9d58fc552e8cad1182fc582ce07d038f579fb1c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/protastudios/splat-cli-releases/releases/download/v1.0.84/splat_1.0.84_linux_arm64.tar.gz"
      sha256 "00dfa5eacc03e0f55248cc603f985045f7ab2c6ad0f7d5670342ff04ef2f70b4"
    else
      url "https://github.com/protastudios/splat-cli-releases/releases/download/v1.0.84/splat_1.0.84_linux_x64_baseline.tar.gz"
      sha256 "368e565ad55b0a1f4e6881ab71e9a6029ae3559e15fd9a804a9ff4008df92301"
    end
  end

  def install
    bin.install Dir["**/splat"].first => "splat"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/splat --help")
  end
end
