class Splat < Formula
  desc "Splat command line interface for trading, auth, transfers, and automation"
  homepage "https://asksplat.com"
  version "1.0.76"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/protastudios/splat-cli-releases/releases/download/v1.0.76/splat_1.0.76_darwin_arm64.tar.gz"
      sha256 "afeda77cf7772658e2a2570245af31287bf38eee84160638184982e5a619773e"
    else
      url "https://github.com/protastudios/splat-cli-releases/releases/download/v1.0.76/splat_1.0.76_darwin_x64.tar.gz"
      sha256 "e58fdbdcbe7c0bd0881cc7c8ca8a7661eb14357faefeae013eea35b4ffdad5ac"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/protastudios/splat-cli-releases/releases/download/v1.0.76/splat_1.0.76_linux_arm64.tar.gz"
      sha256 "0a29ec4acab83bd1e48f6b66b5e0e43f5851c3f4efaac44f78e6f008e9d588af"
    else
      url "https://github.com/protastudios/splat-cli-releases/releases/download/v1.0.76/splat_1.0.76_linux_x64_baseline.tar.gz"
      sha256 "8773aba93c727c9bf3fd532714187c3a3e3b842784cffdef23deed508c61857b"
    end
  end

  def install
    bin.install Dir["**/splat"].first => "splat"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/splat --help")
  end
end
