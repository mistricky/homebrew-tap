class Codesnap < Formula
  desc "Pure Rust tool to generate beautiful code snapshots"
  homepage "https://github.com/mistricky/codesnap"
  version "0.7.3"
    
    on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/mistricky/codesnap/releases/download/v0.7.3/codesnap-aarch64-apple-darwin.tar.gz"
        sha256 "5677e17213c1bc6b86f70e8c4b1aed8e7a937cc1ba8a9136a0c4cb33dfc8b58a"
    
        def install
          bin.install "codesnap"
        end
      end
      if Hardware::CPU.intel?
        url "https://github.com/mistricky/codesnap/releases/download/v0.7.3/codesnap-x86_64-apple-darwin.tar.gz"
        sha256 "ca8048ef29d25669b3095cd911665e15d63bbee47b7ae8f9acf457fb096790d0"
    
        def install
          bin.install "codesnap"
        end
      end

    end


    on_linux do
      if Hardware::CPU.arm?
        url "https://github.com/mistricky/codesnap/releases/download/v0.7.3/codesnap-aarch64-unknown-linux-gnu.tar.gz"
        sha256 "8a98ce59a2ad9c10f36a3dd8c5f6ec1bf52bc58e829faf55bcdb25d95a040f72"
    
        def install
          bin.install "codesnap"
        end
      end
      if Hardware::CPU.intel?
        url "https://github.com/mistricky/codesnap/releases/download/v0.7.3/codesnap-x86_64-unknown-linux-gnu.tar.gz"
        sha256 "13e7662df2c472fedd9931b7804d63365f0b6226d285e14ebb5b6ba693db0571"
    
        def install
          bin.install "codesnap"
        end
      end

    end

  end
