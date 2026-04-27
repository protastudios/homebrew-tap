class Splat < Formula
  desc "Splat command line interface for trading, auth, transfers, and automation"
  homepage "https://asksplat.com"
  version "1.0.68"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/protastudios/splat-cli-releases/releases/download/v1.0.68/splat_1.0.68_darwin_arm64.tar.gz"
      sha256 "82def2a08b7cc94a277c432c4de6a53b6c0d5b45dddbfae0d704b7d549db2f79"
    else
      url "https://github.com/protastudios/splat-cli-releases/releases/download/v1.0.68/splat_1.0.68_darwin_x64.tar.gz"
      sha256 "db12c538c8367d7676d21a65a5d9e1ed1a4407c1af2ea0bdae4649f394c31af5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/protastudios/splat-cli-releases/releases/download/v1.0.68/splat_1.0.68_linux_arm64.tar.gz"
      sha256 "d94086f9b553d5d6fbaab596567b2bdfc8d5ea536bb8a2aff2bbb2f59632afd8"
    else
      url "https://github.com/protastudios/splat-cli-releases/releases/download/v1.0.68/splat_1.0.68_linux_x64_baseline.tar.gz"
      sha256 "4ec6addab524b5238e076d085b01b4a472b1c8be1dc9d273f9bceb686e458688"
    end
  end

  def install
    bin.install Dir["**/splat"].first => "splat"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/splat --help")
  end
end
