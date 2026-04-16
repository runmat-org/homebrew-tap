class Runmat < Formula
  desc "Blazing fast runtime for math workloads"
  homepage "https://runmat.org"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runmat-org/runmat/releases/download/v0.4.1/runmat-v0.4.1-macos-aarch64.tar.gz"
      version "0.4.1"
      sha256 "e6a28d1cfdbd6e3639a64d5920796b25b1cc3266d164c36b3a84edf32de1f616"
    else
      url "https://github.com/runmat-org/runmat/releases/download/v0.4.1/runmat-v0.4.1-macos-x86_64.tar.gz"
      version "0.4.1"
      sha256 "efb36a6c2c312bb9129c31f0bfe7291c81471fbe57a42de7183a4f2e2e5a15c9"
    end
  end

  def install
    bin.install "runmat"
  end

  test do
    system "#{bin}/runmat", "--version"
  end
end
