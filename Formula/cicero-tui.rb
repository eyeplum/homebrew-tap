class CiceroTui < Formula
  desc "Unicode tool with a terminal user interface"
  homepage "https://github.com/eyeplum/cicero-tui"
  url "https://github.com/eyeplum/cicero-tui/archive/v0.1.2.tar.gz"
  sha256 "dd04b7b2169a785495344f982ce24d3e046194c6fff7c8a84a41df76437bb663"
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
