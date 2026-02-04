class Blimp < Formula
  desc "Modern Swift CLI for iOS/macOS app deployment to TestFlight/App Store"
  homepage "https://github.com/platacard/blimp"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/platacard/blimp/releases/download/0.5.0/blimp-0.5.0-macos-arm64.tar.gz"
      sha256 "7ffae15cf78df8b8a9ce3d459d6382257e3c14c96f4d5669ea4b688e15e3c4fe"
    end
  end

  def install
    bin.install "blimp"
  end

  test do
    system "#{bin}/blimp", "--help"
  end
end
