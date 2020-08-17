class CiceroTui < Formula
  desc "Unicode tool with a terminal user interface"
  homepage "https://github.com/eyeplum/cicero-tui"
  url "https://github.com/eyeplum/cicero-tui/archive/v0.1.0.tar.gz"
  sha256 "2a9f7998ce13c702188d1ab93a87e89247a29e58db0d480b25d5fd2429732fa1"
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
