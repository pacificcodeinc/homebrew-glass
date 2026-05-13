class Glass < Formula
  desc "Minimal markdown note editor"
  homepage "https://github.com/pacificcodeinc/glass"
  url "https://github.com/pacificcodeinc/glass/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "5534dc48785eeab0e7d4646a7c1913ef7d6ed15fb472851ea139135e1438dc65"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/glass", "--version"
  end
end
