class Glass < Formula
  desc "Minimal markdown note editor"
  homepage "https://github.com/pacificcodeinc/glass"
  url "https://github.com/pacificcodeinc/glass/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "561421971b74653fbda62f9413984216c2680cee954be670d907ba506c5f49b4"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "glass #{version}", shell_output("#{bin}/glass --version")
  end
end
