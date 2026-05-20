class Splat < Formula
  desc "Splat command line interface for trading, auth, transfers, and automation"
  homepage "https://asksplat.com"
  version "1.0.88"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/protastudios/splat-cli-releases/releases/download/v1.0.88/splat_1.0.88_darwin_arm64.tar.gz"
      sha256 "d8f9dbe859dacab44128d9f78c6b4cef9c76d6f1430c93661242708a2f5a3e7d"
    else
      url "https://github.com/protastudios/splat-cli-releases/releases/download/v1.0.88/splat_1.0.88_darwin_x64.tar.gz"
      sha256 "2a23a50c33bd16abeabe66f302fd8bcc9e28a738be852a241e098f92411708af"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/protastudios/splat-cli-releases/releases/download/v1.0.88/splat_1.0.88_linux_arm64.tar.gz"
      sha256 "15851267bd1970cf23cf2ba4968c98a44a41f00d401278d194617541ebf2e9df"
    else
      url "https://github.com/protastudios/splat-cli-releases/releases/download/v1.0.88/splat_1.0.88_linux_x64_baseline.tar.gz"
      sha256 "5edd5fd2a2e38181b96ce58c6621f90a48473b162aa11fc1283122885b62f12c"
    end
  end

  def install
    bin.install Dir["**/splat"].first => "splat"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/splat --help")
  end
end
