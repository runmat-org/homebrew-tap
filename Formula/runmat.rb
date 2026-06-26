class Runmat < Formula
  desc "Blazing fast runtime for math workloads"
  homepage "https://runmat.org"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/runmat-org/runmat/releases/download/v0.5.5/runmat-v0.5.5-macos-aarch64.tar.gz"
      version "0.5.5"
      sha256 "223b184c6984755cfba411fe3ffb8c2a54447609303e7b9f0aa277e08c4708ce"
    else
      url "https://github.com/runmat-org/runmat/releases/download/v0.5.5/runmat-v0.5.5-macos-x86_64.tar.gz"
      version "0.5.5"
      sha256 "b289b16ed4965424ea7beb0c6d0079d844009540ee78e3ff4f651d656cee876b"
    end
  end

  def install
    bin.install "runmat"
  end

  test do
    system "#{bin}/runmat", "--version"
  end
end
