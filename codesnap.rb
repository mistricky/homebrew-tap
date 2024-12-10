class Codesnap < Formula
  desc "Pure Rust tool to generate beautiful code snapshots"
  homepage "https://github.com/mistricky/codesnap"
  version "0.8.1"
    
    on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/mistricky/codesnap/releases/download/v0.8.1/codesnap-aarch64-apple-darwin.tar.gz"
        sha256 "4d872cab20afea861b084d0be94a8b9b00b745b9898e7ed9376f0f35d09e06fd"
    
        def install
          bin.install "codesnap"
        end
      end
      if Hardware::CPU.intel?
        url "https://github.com/mistricky/codesnap/releases/download/v0.8.1/codesnap-x86_64-apple-darwin.tar.gz"
        sha256 "2b39e6bf6171f2d031281ed815442a2c4b69e4f6794169872ebc6ebbd449f456"
    
        def install
          bin.install "codesnap"
        end
      end

    end


    on_linux do
      if Hardware::CPU.arm?
        url "https://github.com/mistricky/codesnap/releases/download/v0.8.1/codesnap-aarch64-unknown-linux-gnu.tar.gz"
        sha256 "050f5bf9dfa982b4965dbaf17f978a23aeaeab96c69293f233e2b757fb9f108a"
    
        def install
          bin.install "codesnap"
        end
      end
      if Hardware::CPU.intel?
        url "https://github.com/mistricky/codesnap/releases/download/v0.8.1/codesnap-x86_64-unknown-linux-gnu.tar.gz"
        sha256 "f7143599fcbf82cf7f09e42314b233d21958341e9851f4ad39add102ec142ff0"
    
        def install
          bin.install "codesnap"
        end
      end

    end

  end
