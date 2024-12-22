class Codesnap < Formula
  desc "Pure Rust tool to generate beautiful code snapshots"
  homepage "https://github.com/mistricky/codesnap"
  version "0.8.3"
    
    on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/mistricky/codesnap/releases/download/v0.8.3/codesnap-aarch64-apple-darwin.tar.gz"
        sha256 "3abc73f681996eeb073b088fb74f3b13c4486b3fa53b8ca08531e5cef8767688"
    
        def install
          bin.install "codesnap"
        end
      end
      if Hardware::CPU.intel?
        url "https://github.com/mistricky/codesnap/releases/download/v0.8.3/codesnap-x86_64-apple-darwin.tar.gz"
        sha256 "279ce7334916dc0463cf0cdd720fd3ce589595e2b15ab6b5f1991f6bd2ece48b"
    
        def install
          bin.install "codesnap"
        end
      end

    end


    on_linux do
      if Hardware::CPU.arm?
        url "https://github.com/mistricky/codesnap/releases/download/v0.8.3/codesnap-aarch64-unknown-linux-gnu.tar.gz"
        sha256 "12fb871c3fee48dd45727f291324ef99573111bb79faef457fcecb3bfaed2bfa"
    
        def install
          bin.install "codesnap"
        end
      end
      if Hardware::CPU.intel?
        url "https://github.com/mistricky/codesnap/releases/download/v0.8.3/codesnap-x86_64-unknown-linux-gnu.tar.gz"
        sha256 "f3ca16a96616e42b718008299ef2ecb8bf5398ee8701d91dafae12a78a406355"
    
        def install
          bin.install "codesnap"
        end
      end

    end

  end
