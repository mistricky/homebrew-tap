class Codesnap < Formula
  desc "Pure Rust tool to generate beautiful code snapshots"
  homepage "https://github.com/mistricky/codesnap"
  version "0.7.1"
    
    on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/mistricky/codesnap/releases/download/v0.7.1/codesnap-aarch64-apple-darwin.tar.gz"
        sha256 "22974949144df724e76c5df6ff636dff0f75133b0d1d0a68e034fd0ddd44d363"
    
        def install
          bin.install "codesnap"
        end
      end
      if Hardware::CPU.intel?
        url "https://github.com/mistricky/codesnap/releases/download/v0.7.1/codesnap-x86_64-apple-darwin.tar.gz"
        sha256 "0bc44f5a0a0f37ea87ca62cf2eba5a0d17ae8faaaa9e14849d9971d055ccb4cd"
    
        def install
          bin.install "codesnap"
        end
      end

    end


    on_linux do
      if Hardware::CPU.arm?
        url "https://github.com/mistricky/codesnap/releases/download/v0.7.1/codesnap-aarch64-unknown-linux-gnu.tar.gz"
        sha256 "0a0f8b2cfb9a1b58839b0396349e7d94aabd6434ee81e8e679b4c265632799ed"
    
        def install
          bin.install "codesnap"
        end
      end
      if Hardware::CPU.intel?
        url "https://github.com/mistricky/codesnap/releases/download/v0.7.1/codesnap-x86_64-unknown-linux-gnu.tar.gz"
        sha256 "d412bd1f4abafd08cca0cd8fb67df4fb5d92eab782c07c843fca8da8cc2461b7"
    
        def install
          bin.install "codesnap"
        end
      end

    end

  end
