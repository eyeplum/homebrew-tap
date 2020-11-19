class CiceroTui < Formula
  desc "Unicode tool with a terminal user interface"
  homepage "https://github.com/eyeplum/cicero-tui"
  url "https://github.com/eyeplum/cicero-tui/archive/v0.1.3.tar.gz"
  sha256 "2a81e91296e6cd02ad4b37d60a26bd1925826abf003bf88db2346d89297e0046"
  license "GPL-3.0-or-later"
  head "https://github.com/eyeplum/cicero-tui.git"

  depends_on "pkg-config" => :build
  depends_on "rust" => :build

  depends_on "fontconfig"

  def install
    system "cargo", "install", *std_cargo_args
    bin.install "target/release/cicero" => "cicero"
  end

  test do
    system "#{bin}/cicero", "--version"
  end
end
