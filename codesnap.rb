class Codesnap < Formula
  desc "Pure Rust tool to generate beautiful code snapshots"
  homepage "https://github.com/mistricky/codesnap"
  version "0.7.0"
    
    on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/mistricky/codesnap/releases/download/v0.7.0/codesnap-aarch64-apple-darwin.tar.gz"
        sha256 "02316e343d53e0a691ad6bf117a100b10171a8562e06236017e5e18ad73b124d"
    
        def install
          bin.install "codesnap"
        end
      end
      if Hardware::CPU.intel?
        url "https://github.com/mistricky/codesnap/releases/download/v0.7.0/codesnap-x86_64-apple-darwin.tar.gz"
        sha256 "f583cbc5c186db8053712ebf6d6490f9fa29611a6f57cdcd50df45c1422b85b1"
    
        def install
          bin.install "codesnap"
        end
      end

    end


    on_linux do
      if Hardware::CPU.arm?
        url "https://github.com/mistricky/codesnap/releases/download/v0.7.0/codesnap-aarch64-unknown-linux-gnu.tar.gz"
        sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    
        def install
          bin.install "codesnap"
        end
      end
      if Hardware::CPU.intel?
        url "https://github.com/mistricky/codesnap/releases/download/v0.7.0/codesnap-x86_64-unknown-linux-gnu.tar.gz"
        sha256 "131bdb2c01172b6641994d0e6515a43181386a1b5b5616c3141cdcb1c2485d2b"
    
        def install
          bin.install "codesnap"
        end
      end

    end

  end
