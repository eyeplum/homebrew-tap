class CiceroTui < Formula
  desc "Unicode tool with a terminal user interface"
  homepage "https://github.com/eyeplum/cicero-tui"
  url "https://github.com/eyeplum/cicero-tui/archive/v0.2.0.tar.gz"
  sha256 "d973457cc02e2076dd5662f2b652b6ae1413e812d49d8b9aa93ea42cb842a483"
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
