
class Nestor < Formula
  desc "NES emulator"
  homepage "https://github.com/arl/nestor"
  url "https://github.com/arl/nestor/releases/download/untagged-c03687dbf69fe1485195/nestor-macos.tar.gz"
  sha256 "273af3c351330af98f022510d4ccf850b73ed4939979a3252b512c597ac98da3"
  license "GPLv3"
  version "0.0.1"

  depends_on "go@1.24" => :build 
  depends_on "gtk+3"
  depends_on "sdl2"
  depends_on "sdl2_ttf"  

  def install
    go_bin = Formula["go"].opt_bin/"go"
    version_output = Utils.safe_popen_read(go_bin, "version")
    required_version = "go1.24"
    unless version_output.include?(required_version)
      odie "Nestor requires Go #{required_version} or later. Installed version: #{version_output}"
    end

    ENV["CGO_ENABLED"] = "1"
    system go_bin, "build", *std_go_args(ldflags: "-s -w"), "./cmd/nestor"
  end
end
