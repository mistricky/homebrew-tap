class Codesnap < Formula
  desc "Pure Rust tool to generate beautiful code snapshots"
  homepage "https://github.com/mistricky/codesnap"
  version "0.8.0"
    
    on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/mistricky/codesnap/releases/download/v0.8.0/codesnap-aarch64-apple-darwin.tar.gz"
        sha256 "b62f27aa09ce86c04af55670a804842a897b58b4201f783bfd614de200207c14"
    
        def install
          bin.install "codesnap"
        end
      end
      if Hardware::CPU.intel?
        url "https://github.com/mistricky/codesnap/releases/download/v0.8.0/codesnap-x86_64-apple-darwin.tar.gz"
        sha256 "d682c6484986f0604edbe018d30e9a53d5fb6bd24e79a0c2eae97fe8ef7fed8e"
    
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
