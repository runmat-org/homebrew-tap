class Runmat < Formula
  desc "Blazing fast runtime for math workloads"
  homepage "https://runmat.org"
  version "0.2.8"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runmat-org/runmat/releases/download/v0.2.8/runmat-v0.2.8-macos-aarch64.tar.gz"
      sha256 "72d7e63f2d4c285fbeb685aa34124380f3047218c693102989427213c54243b2"
    else
      url "https://github.com/runmat-org/runmat/releases/download/v0.2.8/runmat-v0.2.8-macos-x86_64.tar.gz"
      sha256 "7f2f53d1ff8db787840af5509d94ef90bfdb11084b29a8faf84bedfed5c2ba39"
    end
  end

  def install
    bin.install "runmat"
  end

  test do
    system "#{bin}/runmat", "--version"
  end
end
