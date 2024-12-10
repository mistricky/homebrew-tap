class Codesnap < Formula
  desc "Pure Rust tool to generate beautiful code snapshots"
  homepage "https://github.com/mistricky/codesnap"
  version "0.8.0"
    
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mistricky/codesnap/releases/download/v0.8.0/codesnap-aarch64-apple-darwin.tar.gz"
      sha256 "7dd9ebb5fc6bbc9cd199406e9f6139d6f1667b7c8d0294ec07e9771db926ccfd"
  
      def install
        bin.install "codesnap"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/mistricky/codesnap/releases/download/v0.8.0/codesnap-x86_64-apple-darwin.tar.gz"
      sha256 "adb793e33f135a2be7882937e3ffc778ecacbf0da279f276214d8ae9f787d718"
  
      def install
        bin.install "codesnap"
      end
    end

  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/mistricky/codesnap/releases/download/v0.8.0/codesnap-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e86e1e48a00010851e1e8812b9fd14772613bc3873f9d3a9b52822e4cfc8ed3f"
  
      def install
        bin.install "codesnap"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/mistricky/codesnap/releases/download/v0.8.0/codesnap-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bd3ea9a4d511900f1e947967ea10edd2c1b184d214a9efe45f156579ff692690"
  
      def install
        bin.install "codesnap"
      end
    end

  end

end
