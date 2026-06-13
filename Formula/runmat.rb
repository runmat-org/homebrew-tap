class Runmat < Formula
  desc "Blazing fast runtime for math workloads"
  homepage "https://runmat.org"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runmat-org/runmat/releases/download/v0.5.2/runmat-v0.5.2-macos-aarch64.tar.gz"
      version "0.5.2"
      sha256 "28cd748b2fcb16b18263aef3e0bdcfa4d2f2f1808e75795668e1439333e6835e"
    else
      url "https://github.com/runmat-org/runmat/releases/download/v0.5.2/runmat-v0.5.2-macos-x86_64.tar.gz"
      version "0.5.2"
      sha256 "7b9b7da4ae205b527cbb473b7416ca38b408b1b704b70e33cfb9979acef63503"
    end
  end

  def install
    bin.install "runmat"
  end

  test do
    system "#{bin}/runmat", "--version"
  end
end
