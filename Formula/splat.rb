class Splat < Formula
  desc "Splat command line interface for trading, auth, transfers, and automation"
  homepage "https://asksplat.com"
  version "1.0.94"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/protastudios/splat-cli-releases/releases/download/v1.0.94/splat_1.0.94_darwin_arm64.tar.gz"
      sha256 "f064f815b4a7b2618f01fceeb0b12bae02d4eaa6c30bf982964d3f9c884c3c3a"
    else
      url "https://github.com/protastudios/splat-cli-releases/releases/download/v1.0.94/splat_1.0.94_darwin_x64.tar.gz"
      sha256 "99edd566754de5839aa3f593040d18be523f57856223bcb32ff56ad20ad18309"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/protastudios/splat-cli-releases/releases/download/v1.0.94/splat_1.0.94_linux_arm64.tar.gz"
      sha256 "c87c93010e42553836d3547c3cdd91edd07d1f26a0f66936489c2b9c20eddd69"
    else
      url "https://github.com/protastudios/splat-cli-releases/releases/download/v1.0.94/splat_1.0.94_linux_x64_baseline.tar.gz"
      sha256 "c139d391a728837b7bcf28ba1057dee05a37815961984e87266a71c3967f4891"
    end
  end

  def install
    bin.install Dir["**/splat"].first => "splat"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/splat --help")
  end
end
