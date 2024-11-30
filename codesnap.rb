class Codesnap < Formula
  desc "Pure Rust tool to generate beautiful code snapshots"
  homepage "https://github.com/mistricky/codesnap"
  version "0.7.2"
    
    on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/mistricky/codesnap/releases/download/v0.7.2/codesnap-aarch64-apple-darwin.tar.gz"
        sha256 "47ce2cd43c161eb4af903c55ac2ba7edf78554cd0e96592816785c2f828fd336"
    
        def install
          bin.install "codesnap"
        end
      end
      if Hardware::CPU.intel?
        url "https://github.com/mistricky/codesnap/releases/download/v0.7.2/codesnap-x86_64-apple-darwin.tar.gz"
        sha256 "0af77b798b96e5a760451854f7e42df4a95758549f413c7d343a005da2b7cb0c"
    
        def install
          bin.install "codesnap"
        end
      end

    end


    on_linux do
      if Hardware::CPU.arm?
        url "https://github.com/mistricky/codesnap/releases/download/v0.7.2/codesnap-aarch64-unknown-linux-gnu.tar.gz"
        sha256 "80a288ddc96eb3a83d247df3944d8ab6c2ca1b35ade6900c7165c95fb01e2e42"
    
        def install
          bin.install "codesnap"
        end
      end
      if Hardware::CPU.intel?
        url "https://github.com/mistricky/codesnap/releases/download/v0.7.2/codesnap-x86_64-unknown-linux-gnu.tar.gz"
        sha256 "c9c8fd87e56a043c151bb809a4c9d9e02f4d9ccc39d15bf7dc8c406a3b0fd402"
    
        def install
          bin.install "codesnap"
        end
      end

    end

  end
