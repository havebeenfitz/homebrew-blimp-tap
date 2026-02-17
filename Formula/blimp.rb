class Blimp < Formula
  desc "Modern Swift CLI for iOS/macOS app deployment to TestFlight/App Store"
  homepage "https://github.com/platacard/blimp"
  version "0.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/platacard/blimp/releases/download/0.7.0/blimp-0.7.0-macos-arm64.tar.gz"
      sha256 "b8b8f3a739744ba57fc9a3ac4ef22c5cb804d6bee3d95f62360416ca3a979f3c"
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
