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
        sha256 "8d3de7cf271a0e180d9894cddb6f3f9073fc8082038ee5cfc8d3010aabb72c3b"
    
        def install
          bin.install "codesnap"
        end
      end
      if Hardware::CPU.intel?
        url "https://github.com/mistricky/codesnap/releases/download/v0.8.0/codesnap-x86_64-unknown-linux-gnu.tar.gz"
        sha256 "c634cbab25495367830952ef767a08c3fe71f326921f9ee7d6d92ec6bb75f76c"
    
        def install
          bin.install "codesnap"
        end
      end

    end

  end
