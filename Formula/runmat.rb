class Runmat < Formula
  desc "Blazing fast runtime for math workloads"
  homepage "https://runmat.org"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runmat-org/runmat/releases/download/v0.2.7/runmat-v0.2.7-macos-aarch64.tar.gz"
      sha256 "448ebf579cf410362be7700b227e597884ec025baffda5158ca783ecd17718b1"
    else
      url "https://github.com/runmat-org/runmat/releases/download/v0.2.7/runmat-v0.2.7-macos-x86_64.tar.gz"
      sha256 "9133f3ba4a21ce8438300ba2e94372626956ab12730dbeab9396927b1aeb60d7"
    end
  end

  def install
    bin.install "runmat"
  end

  test do
    system "#{bin}/runmat", "--version"
  end
end