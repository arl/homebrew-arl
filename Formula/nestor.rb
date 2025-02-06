
class Nestor < Formula
  desc "NES emulator"
  homepage "https://github.com/arl/nestor"
  url "https://github.com/arl/nestor/archive/v0.1.0.tar.gz"
  sha256 "80781802f95fa6d4a9532ae9b3de254f7d69a6af935cf2acc19587508b66d857"
  license "GPLv3"
  version "0.1.0"

  depends_on "go@1.24" => :build 
  depends_on "gtk+3"
  depends_on "sdl2"

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
