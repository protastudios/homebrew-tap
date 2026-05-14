class Splat < Formula
  desc "Splat command line interface for trading, auth, transfers, and automation"
  homepage "https://asksplat.com"
  version "1.0.82"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/protastudios/splat-cli-releases/releases/download/v1.0.82/splat_1.0.82_darwin_arm64.tar.gz"
      sha256 "00f1de3d90205dc8af2d6c6ae2a2ca39f4972e9e157a04f6d5d3359d453ca746"
    else
      url "https://github.com/protastudios/splat-cli-releases/releases/download/v1.0.82/splat_1.0.82_darwin_x64.tar.gz"
      sha256 "9bb8c375ad81135ed6ab2179d87d6388a8b9a828d48b02579e08add2ab93f764"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/protastudios/splat-cli-releases/releases/download/v1.0.82/splat_1.0.82_linux_arm64.tar.gz"
      sha256 "c7bc5dd7985c6eeccadc3d1d9f830c7f4781748c3f4a0bcce16938fbdb63dbc9"
    else
      url "https://github.com/protastudios/splat-cli-releases/releases/download/v1.0.82/splat_1.0.82_linux_x64_baseline.tar.gz"
      sha256 "9a1b18fde384a07fa1fae3230fb98a35e386c6344e4a4681dd518c12c34f460f"
    end
  end

  def install
    bin.install Dir["**/splat"].first => "splat"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/splat --help")
  end
end
