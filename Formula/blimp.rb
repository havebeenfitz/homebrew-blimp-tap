class Blimp < Formula
  desc "Modern Swift CLI for iOS/macOS app deployment to TestFlight/App Store"
  homepage "https://github.com/platacard/blimp"
  version "0.8.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/platacard/blimp/releases/download/0.8.2/blimp-0.8.2-macos-arm64.tar.gz"
      sha256 "1f97bf4500f63123bf309e93d93e276685e2459b8ac937ff38710c631b2fc711"
    end
  end

  def install
    libexec.install "blimp"
    Dir.glob("*.bundle").each { |b| libexec.install b }
    bin.write_exec_script libexec/"blimp"
  end

  test do
    system "#{bin}/blimp", "--help"
  end
end
