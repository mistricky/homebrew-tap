class Codesnap < Formula
  desc "Pure Rust tool to generate beautiful code snapshots"
  homepage "https://github.com/mistricky/codesnap"
  version "0.8.2"
    
    on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/mistricky/codesnap/releases/download/v0.8.2/codesnap-aarch64-apple-darwin.tar.gz"
        sha256 "9c43b8fadb5e1bd3497434c20da246dc60d963306ead33d7ada7e51fdff26ba4"
    
        def install
          bin.install "codesnap"
        end
      end
      if Hardware::CPU.intel?
        url "https://github.com/mistricky/codesnap/releases/download/v0.8.2/codesnap-x86_64-apple-darwin.tar.gz"
        sha256 "aa747dc01c075d279836c220ccd919902e800f5eb39ebbcf1b870ec80e9e9195"
    
        def install
          bin.install "codesnap"
        end
      end

    end


    on_linux do
      if Hardware::CPU.arm?
        url "https://github.com/mistricky/codesnap/releases/download/v0.8.2/codesnap-aarch64-unknown-linux-gnu.tar.gz"
        sha256 "2f231f9bdab0827dcfd7669759f8ed6dfa18e5589b081ae23911f99cc26deb61"
    
        def install
          bin.install "codesnap"
        end
      end
      if Hardware::CPU.intel?
        url "https://github.com/mistricky/codesnap/releases/download/v0.8.2/codesnap-x86_64-unknown-linux-gnu.tar.gz"
        sha256 "aca3eb101fd053a6c98b55c3fddc528d62b6f0b2b586a247f14887acb9903ed7"
    
        def install
          bin.install "codesnap"
        end
      end

    end

  end
