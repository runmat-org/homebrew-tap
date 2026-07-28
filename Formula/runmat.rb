class Runmat < Formula
  desc "Blazing fast runtime for math workloads"
  homepage "https://runmat.org"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runmat-org/runmat/releases/download/v0.6.0/runmat-v0.6.0-macos-aarch64.tar.gz"
      sha256 "c6383ce34e55c02d3ee249ca6809eacbca88c6a7559ed2ae0eef7e2987ade7de"
    else
      url "https://github.com/runmat-org/runmat/releases/download/v0.6.0/runmat-v0.6.0-macos-x86_64.tar.gz"
      sha256 "1ce40d8e7666dda25c267396653812e9a6a3a994f5ef8cf53fe1cf506968e4ea"
    end
  end

  def install
    bin.install "runmat"
  end

  test do
    system bin/"runmat", "--version"
  end
end
