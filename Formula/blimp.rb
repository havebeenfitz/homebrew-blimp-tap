class Blimp < Formula
  desc "Modern Swift CLI for iOS/macOS app deployment to TestFlight/App Store"
  homepage "https://github.com/platacard/blimp"
  version "0.6.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/platacard/blimp/releases/download/0.6.3/blimp-0.6.3-macos-arm64.tar.gz"
      sha256 "e6ec1f6bb185fdecc5771504525bed44b81f87307d2dba98de99edef091cf284"
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
