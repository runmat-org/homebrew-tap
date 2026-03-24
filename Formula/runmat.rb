class Runmat < Formula
  desc "Blazing fast runtime for math workloads"
  homepage "https://runmat.org"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runmat-org/runmat/releases/download/v0.3.2/runmat-v0.3.2-macos-aarch64.tar.gz"
      version "0.3.2"
      sha256 "198ffa284ec9d4dac9318f32d865a94fee0d89a7635f9759d115181eab6c3202"
    else
      url "https://github.com/runmat-org/runmat/releases/download/v0.3.2/runmat-v0.3.2-macos-x86_64.tar.gz"
      version "0.3.2"
      sha256 "5cb7f3d22135fbfdfef3b2aa10bea947f22276355712bcf8507268a0fb4fa21c"
    end
  end

  def install
    bin.install "runmat"
  end

  test do
    system "#{bin}/runmat", "--version"
  end
end
