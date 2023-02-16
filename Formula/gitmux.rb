# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Gitmux < Formula
  desc "Git in your tmux status bar."
  homepage "https://github.com/arl/gitmux"
  version "0.9.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/arl/gitmux/releases/download/v0.9.0/gitmux_v0.9.0_macOS_amd64.tar.gz"
      sha256 "256fd209fcd717d6af1308d33d46a3982dfac7dbccdb54003365bcaa4a23b8b8"

      def install
        bin.install "gitmux"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/arl/gitmux/releases/download/v0.9.0/gitmux_v0.9.0_macOS_arm64.tar.gz"
      sha256 "6d2b1cb149abe90f4cf9acab3c94ceb1fb734e1daaa6735b0c3b35037830850f"

      def install
        bin.install "gitmux"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/arl/gitmux/releases/download/v0.9.0/gitmux_v0.9.0_linux_arm64.tar.gz"
      sha256 "97f0909aea96a33b473066474a2dd0a770cfe93b94f7af9d2f1d179a68bcafa5"

      def install
        bin.install "gitmux"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/arl/gitmux/releases/download/v0.9.0/gitmux_v0.9.0_linux_amd64.tar.gz"
      sha256 "b3aa245c86561202e2fa8110a93c2864bf712c6467ebf0024e8a10ea0c69786f"

      def install
        bin.install "gitmux"
      end
    end
  end
end
