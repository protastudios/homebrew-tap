class Splat < Formula
  desc "Splat command line interface for trading, auth, transfers, and automation"
  homepage "https://asksplat.com"
  version "1.0.92"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/protastudios/splat-cli-releases/releases/download/v1.0.92/splat_1.0.92_darwin_arm64.tar.gz"
      sha256 "cea3a4efcbc611e2143a22214d3b646fd7c0aeae9450e3f4ab846298203b685e"
    else
      url "https://github.com/protastudios/splat-cli-releases/releases/download/v1.0.92/splat_1.0.92_darwin_x64.tar.gz"
      sha256 "8bf2eab51b126096aad7f2293ea60dae00f78c1ec7c8e69c99467acdfa432435"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/protastudios/splat-cli-releases/releases/download/v1.0.92/splat_1.0.92_linux_arm64.tar.gz"
      sha256 "1d5e93d37280ecb3713a3358b4391bc646b8548ce8f4600eaf6e718308272667"
    else
      url "https://github.com/protastudios/splat-cli-releases/releases/download/v1.0.92/splat_1.0.92_linux_x64_baseline.tar.gz"
      sha256 "c6b7c0a628ddabacee56891cc73f3ccbd55ceed6f665bb50a369627fca60d2b2"
    end
  end

  def install
    bin.install Dir["**/splat"].first => "splat"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/splat --help")
  end
end
