class Runmat < Formula
  desc "Blazing fast runtime for math workloads"
  homepage "https://runmat.org"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runmat-org/runmat/releases/download/v0.5.3/runmat-v0.5.3-macos-aarch64.tar.gz"
      version "0.5.3"
      sha256 "299f7d654ad2c4899c8da882c8793a907bf9bdf8802c513818ab82ac899ce7fa"
    else
      url "https://github.com/runmat-org/runmat/releases/download/v0.5.3/runmat-v0.5.3-macos-x86_64.tar.gz"
      version "0.5.3"
      sha256 "4e0c7fc47f607e89c985f06709bb01cd1902953008a9c905211c06bf808127ee"
    end
  end

  def install
    bin.install "runmat"
  end

  test do
    system "#{bin}/runmat", "--version"
  end
end
