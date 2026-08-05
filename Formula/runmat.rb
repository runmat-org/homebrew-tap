class Runmat < Formula
  desc "Blazing fast runtime for math workloads"
  homepage "https://runmat.org"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runmat-org/runmat/releases/download/v0.6.1/runmat-v0.6.1-macos-aarch64.tar.gz"
      sha256 "baed9e67e5246c188f858295ec3c348415c5b3e61a98244efa54d2db5b2cf6d1"
    else
      url "https://github.com/runmat-org/runmat/releases/download/v0.6.1/runmat-v0.6.1-macos-x86_64.tar.gz"
      sha256 "ed53033e793208b8bb1a8e7cd5743cf814e039151a65ee33d87497546f1a84ab"
    end
  end

  def install
    bin.install "runmat"
  end

  test do
    system bin/"runmat", "--version"
  end
end
