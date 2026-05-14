class Splat < Formula
  desc "Splat command line interface for trading, auth, transfers, and automation"
  homepage "https://asksplat.com"
  version "1.0.80"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/protastudios/splat-cli-releases/releases/download/v1.0.80/splat_1.0.80_darwin_arm64.tar.gz"
      sha256 "e17227c5aa96a9732fc79f19dbe21764ea217620ffa91c96dbf46172a456571b"
    else
      url "https://github.com/protastudios/splat-cli-releases/releases/download/v1.0.80/splat_1.0.80_darwin_x64.tar.gz"
      sha256 "ea062b5f62db165b74a27bc39e1fabcbf0d675c8e6c9975edd92cec8a17364b6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/protastudios/splat-cli-releases/releases/download/v1.0.80/splat_1.0.80_linux_arm64.tar.gz"
      sha256 "e2ac02df6ca286535eed105e1ee0e89302c1de180df0767b31e2fc2c352db641"
    else
      url "https://github.com/protastudios/splat-cli-releases/releases/download/v1.0.80/splat_1.0.80_linux_x64_baseline.tar.gz"
      sha256 "7f7fdd3eca65fbb7e42a396e7583a14292a952861d3aa4b6ed24cdaf69e0a6e3"
    end
  end

  def install
    bin.install Dir["**/splat"].first => "splat"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/splat --help")
  end
end
