class Runmat < Formula
  desc "Blazing fast runtime for math workloads"
  homepage "https://runmat.org"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runmat-org/runmat/releases/download/v0.4.0/runmat-v0.4.0-macos-aarch64.tar.gz"
      version "0.4.0"
      sha256 "9acbbe6c5887f5b62d2198fb1b575ea05752cb0e0b800bad860c972b412343ab"
    else
      url "https://github.com/runmat-org/runmat/releases/download/v0.4.0/runmat-v0.4.0-macos-x86_64.tar.gz"
      version "0.4.0"
      sha256 "92ec044cc225d35baf97a7a16b84784bbbaaea84de0c4322153c36f7794e36e9"
    end
  end

  def install
    bin.install "runmat"
  end

  test do
    system "#{bin}/runmat", "--version"
  end
end
