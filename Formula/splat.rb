class Splat < Formula
  desc "Splat command line interface for trading, auth, transfers, and automation"
  homepage "https://asksplat.com"
  version "1.0.75"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/protastudios/splat-cli-releases/releases/download/v1.0.75/splat_1.0.75_darwin_arm64.tar.gz"
      sha256 "63669e801d1f532fe4c574e8450d4658ce0f8e82ed26e90c32455a7deb88d607"
    else
      url "https://github.com/protastudios/splat-cli-releases/releases/download/v1.0.75/splat_1.0.75_darwin_x64.tar.gz"
      sha256 "8e3b2e360f361cc189db4126995a29bb3a3d82aa7ef7b8474de394a4e7474af5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/protastudios/splat-cli-releases/releases/download/v1.0.75/splat_1.0.75_linux_arm64.tar.gz"
      sha256 "a5e10f99dd4969b52a611febd2ee0b5d2d2e0eb64c070463855592cc3ff382fd"
    else
      url "https://github.com/protastudios/splat-cli-releases/releases/download/v1.0.75/splat_1.0.75_linux_x64_baseline.tar.gz"
      sha256 "2d5809069097abc7e5ea05f6361cd96b4f62a2640d3b6c51a54a7174e75a50e7"
    end
  end

  def install
    bin.install Dir["**/splat"].first => "splat"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/splat --help")
  end
end
