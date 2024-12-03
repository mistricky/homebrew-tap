class Codesnap < Formula
  desc "Pure Rust tool to generate beautiful code snapshots"
  homepage "https://github.com/mistricky/codesnap"
  version "0.7.5"
    
    on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/mistricky/codesnap/releases/download/v0.7.5/codesnap-aarch64-apple-darwin.tar.gz"
        sha256 "44d2011e1bd445c22c41276995a77fda4b2b479bf80d6677ba0c9394cd1469c9"
    
        def install
          bin.install "codesnap"
        end
      end
      if Hardware::CPU.intel?
        url "https://github.com/mistricky/codesnap/releases/download/v0.7.5/codesnap-x86_64-apple-darwin.tar.gz"
        sha256 "6b6ae93e86a00e64aed61f73fd141bf3f1bc33511eac0ac15c5f72e5728c96c8"
    
        def install
          bin.install "codesnap"
        end
      end

    end


    on_linux do
      if Hardware::CPU.arm?
        url "https://github.com/mistricky/codesnap/releases/download/v0.7.5/codesnap-aarch64-unknown-linux-gnu.tar.gz"
        sha256 "27c7951e29aaab1f4184a56d32f3410425ef09c76487f3873b5851b5d026495a"
    
        def install
          bin.install "codesnap"
        end
      end
      if Hardware::CPU.intel?
        url "https://github.com/mistricky/codesnap/releases/download/v0.7.5/codesnap-x86_64-unknown-linux-gnu.tar.gz"
        sha256 "0996320ed51631e3aeb1318ed6bfc40795f5c7bd22104c4db4c432b7ef5900dd"
    
        def install
          bin.install "codesnap"
        end
      end

    end

  end
