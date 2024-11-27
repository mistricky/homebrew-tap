class Codesnap < Formula
  desc "Pure Rust tool to generate beautiful code snapshots"
  homepage "https://github.com/mistricky/CodeSnap"
  version "0.7.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/mistricky/CodeSnap/releases/download/v0.7.0/codesnap-x86_64-apple-darwin.tar.gz"
      sha256 "f583cbc5c186db8053712ebf6d6490f9fa29611a6f57cdcd50df45c1422b85b1"

      def install
        bin.install "codesnap"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/mistricky/CodeSnap/releases/download/v0.7.0/codesnap-aarch64-apple-darwin.tar.gz"
      sha256 "02316e343d53e0a691ad6bf117a100b10171a8562e06236017e5e18ad73b124d"

      def install
        bin.install "codesnap"
      end
    end
  end
end
