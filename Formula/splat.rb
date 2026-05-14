class Splat < Formula
  desc "Splat command line interface for trading, auth, transfers, and automation"
  homepage "https://asksplat.com"
  version "1.0.83"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/protastudios/splat-cli-releases/releases/download/v1.0.83/splat_1.0.83_darwin_arm64.tar.gz"
      sha256 "e89af72370192e72cbc36b145650ed51ffcb36f549f11d6b8c239c399dc6cf84"
    else
      url "https://github.com/protastudios/splat-cli-releases/releases/download/v1.0.83/splat_1.0.83_darwin_x64.tar.gz"
      sha256 "626d61e3d8e55e40d314ebe5e3ad32bcd06513053f934f91966798c8bc60b36f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/protastudios/splat-cli-releases/releases/download/v1.0.83/splat_1.0.83_linux_arm64.tar.gz"
      sha256 "638b655d951d5109b4837afd13e1ccfe746c0beac0e896927263f86d5771b185"
    else
      url "https://github.com/protastudios/splat-cli-releases/releases/download/v1.0.83/splat_1.0.83_linux_x64_baseline.tar.gz"
      sha256 "c6c633b1c08f817e9d9aae64fceede24fc9544ce3c1ef1faa6bda616b63105f9"
    end
  end

  def install
    bin.install Dir["**/splat"].first => "splat"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/splat --help")
  end
end
