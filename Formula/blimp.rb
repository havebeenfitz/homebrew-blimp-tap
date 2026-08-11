class Blimp < Formula
  desc "Modern Swift CLI for iOS/macOS app deployment to TestFlight/App Store"
  homepage "https://github.com/platacard/blimp"
  version "0.8.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/platacard/blimp/releases/download/0.8.1/blimp-0.8.1-macos-arm64.tar.gz"
      sha256 "0baf94c6218319d1b407b1c5f7ad21ab6c1393e69b72f1121ebe3c4a9a0f8e7d"
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
