class Splat < Formula
  desc "Splat command line interface for trading, auth, transfers, and automation"
  homepage "https://asksplat.com"
  version "1.0.81"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/protastudios/splat-cli-releases/releases/download/v1.0.81/splat_1.0.81_darwin_arm64.tar.gz"
      sha256 "ef13b4ba2351d9c013a4369d74150e498ebfe1a0eeff5ef1a94f4992c6191b45"
    else
      url "https://github.com/protastudios/splat-cli-releases/releases/download/v1.0.81/splat_1.0.81_darwin_x64.tar.gz"
      sha256 "09032bf2b8301a569de36e90912d7f7d31b8edd88071b6c2483524c6bb72abe4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/protastudios/splat-cli-releases/releases/download/v1.0.81/splat_1.0.81_linux_arm64.tar.gz"
      sha256 "4fc57d77bf492dd04c8a4e069066b7ccc5a547b27515333ee88a7a303c6e4b80"
    else
      url "https://github.com/protastudios/splat-cli-releases/releases/download/v1.0.81/splat_1.0.81_linux_x64_baseline.tar.gz"
      sha256 "59c626eb0ac859f59c0aed15cc3b31d90aa3d4bc58b36e0a05a3af89a9a88f8f"
    end
  end

  def install
    bin.install Dir["**/splat"].first => "splat"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/splat --help")
  end
end
