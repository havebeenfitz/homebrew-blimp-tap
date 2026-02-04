class Blimp < Formula
  desc "Modern Swift CLI for iOS/macOS app deployment to TestFlight/App Store"
  homepage "https://github.com/platacard/blimp"
  version "0.6.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/platacard/blimp/releases/download/0.6.2/blimp-0.6.2-macos-arm64.tar.gz"
      sha256 "d9517050324b53e9f8eab50e1f10cd57721b0733e355f77fb3e4bc49e09af252"
    end
  end

  def install
    bin.install "blimp"
  end

  test do
    system "#{bin}/blimp", "--help"
  end
end
