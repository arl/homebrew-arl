class Nestor < Formula
  desc "NES emulator."
  homepage "https://github.com/arl/nestor"
  version "0.0.1"
  license "GPLv3"

  depends_on "go@1.24"
  depends_on "gtk+3"
  depends_on "sdl2"
  depends_on "sdl2_ttf"  

  on_macos do
    on_intel do
      url "https://github.com/arl/nestor/releases/download/v0.0.1/nestor-macos-x64.tgz"
      sha256 "9fbf1fc928c6a2d216b3ce5ad23f7768d0550477e18b845c6996cae426aadd4b"

      def install
        bin.install "nestor"
      end
    end
    on_arm do
      url "https://github.com/arl/nestor/releases/download/v0.0.1/nestor-macos-arm64.tgz"
      sha256 "412a33581b93aa23295fcae857c5fc128a03ee267b16d002ff9a194817a823b8"

      def install
        bin.install "nestor"
      end
    end
  end
end
