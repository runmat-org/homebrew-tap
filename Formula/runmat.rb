class Runmat < Formula
  desc "Blazing fast runtime for math workloads"
  homepage "https://runmat.org"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runmat-org/runmat/releases/download/v0.4.4/runmat-v0.4.4-macos-aarch64.tar.gz"
      version "0.4.4"
      sha256 "a4cd038c48c6aa493726692b3091eb1fdcc9b4129a291b176f6c528b50be8a70"
    else
      url "https://github.com/runmat-org/runmat/releases/download/v0.4.4/runmat-v0.4.4-macos-x86_64.tar.gz"
      version "0.4.4"
      sha256 "72f04b090b4595314c54ea5c73ab8648091657f05fcc24b2dd2e515a7337b5cd"
    end
  end

  def install
    bin.install "runmat"
  end

  test do
    system "#{bin}/runmat", "--version"
  end
end
