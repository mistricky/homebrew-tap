class Codesnap < Formula
  desc "Pure Rust tool to generate beautiful code snapshots"
  homepage "https://github.com/mistricky/codesnap"
  version "0.9.0"
    
    on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/mistricky/codesnap/releases/download/v0.9.0/codesnap-aarch64-apple-darwin.tar.gz"
        sha256 "47b8fd8f70bb2f7a4dc3a719078339b528b96e04130bfab7816cffcb95cf345c"
    
        def install
          bin.install "codesnap"
        end
      end
      if Hardware::CPU.intel?
        url "https://github.com/mistricky/codesnap/releases/download/v0.9.0/codesnap-x86_64-apple-darwin.tar.gz"
        sha256 "8d9bee5fef4bee3728959dc6edaa11a98d5be5c948cc5fd589c72e8a98d18eda"
    
        def install
          bin.install "codesnap"
        end
      end

    end


    on_linux do
      if Hardware::CPU.arm?
        url "https://github.com/mistricky/codesnap/releases/download/v0.9.0/codesnap-aarch64-unknown-linux-gnu.tar.gz"
        sha256 "c09e75666a5d3eeb213fa342dc6266503ca0eee06beb5afa3003b05e2141f35d"
    
        def install
          bin.install "codesnap"
        end
      end
      if Hardware::CPU.intel?
        url "https://github.com/mistricky/codesnap/releases/download/v0.9.0/codesnap-x86_64-unknown-linux-gnu.tar.gz"
        sha256 "26a70e24607d3e44d60786ddbf8c287848a528a944d70e6b773f94b5e99f5187"
    
        def install
          bin.install "codesnap"
        end
      end

    end

  end
