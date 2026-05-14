class Splat < Formula
  desc "Splat command line interface for trading, auth, transfers, and automation"
  homepage "https://asksplat.com"
  version "1.0.85"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/protastudios/splat-cli-releases/releases/download/v1.0.85/splat_1.0.85_darwin_arm64.tar.gz"
      sha256 "a214ccb6a899cdabd82caf9310382dbb9afa41860df8b86b7108d5b694ce2bb4"
    else
      url "https://github.com/protastudios/splat-cli-releases/releases/download/v1.0.85/splat_1.0.85_darwin_x64.tar.gz"
      sha256 "e1fb55d8d4cbf34d73f2181311cb567300c4408db79ce044a96ae2951e14ea8f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/protastudios/splat-cli-releases/releases/download/v1.0.85/splat_1.0.85_linux_arm64.tar.gz"
      sha256 "abf9f5c752cd65894182f50d8cd32e6614d31c0e4fa9b375891a5147bee32c01"
    else
      url "https://github.com/protastudios/splat-cli-releases/releases/download/v1.0.85/splat_1.0.85_linux_x64_baseline.tar.gz"
      sha256 "2cc0d4ad2081c9f35dd397ffbe35439d46dcdbcc2d288d276074acc31b558340"
    end
  end

  def install
    bin.install Dir["**/splat"].first => "splat"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/splat --help")
  end
end
