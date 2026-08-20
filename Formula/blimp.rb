class Blimp < Formula
  desc "Modern Swift CLI for iOS/macOS app deployment to TestFlight/App Store"
  homepage "https://github.com/platacard/blimp"
  version "0.9.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/platacard/blimp/releases/download/0.9.0/blimp-0.9.0-macos-arm64.tar.gz"
      sha256 "818033f7b10736f37be74b345639f39c48a4bec444e830b40e48766729b750ce"
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
