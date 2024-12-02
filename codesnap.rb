class Codesnap < Formula
  desc "Pure Rust tool to generate beautiful code snapshots"
  homepage "https://github.com/mistricky/codesnap"
  version "0.7.4"
    
    on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/mistricky/codesnap/releases/download/v0.7.4/codesnap-aarch64-apple-darwin.tar.gz"
        sha256 "20cfaadee7d68f161820e61c01102b23dc88f3cfb5abaefccaaf2d1d7a518163"
    
        def install
          bin.install "codesnap"
        end
      end
      if Hardware::CPU.intel?
        url "https://github.com/mistricky/codesnap/releases/download/v0.7.4/codesnap-x86_64-apple-darwin.tar.gz"
        sha256 "8de681ed82e9a7822be42d23c0256092a1446b279e6d0748e3308c084b32d272"
    
        def install
          bin.install "codesnap"
        end
      end

    end


    on_linux do
      if Hardware::CPU.arm?
        url "https://github.com/mistricky/codesnap/releases/download/v0.7.4/codesnap-aarch64-unknown-linux-gnu.tar.gz"
        sha256 "9c8194e4003674f1f24ee30b200337fd1e299b13f0ece9b39c0f59a629190b80"
    
        def install
          bin.install "codesnap"
        end
      end
      if Hardware::CPU.intel?
        url "https://github.com/mistricky/codesnap/releases/download/v0.7.4/codesnap-x86_64-unknown-linux-gnu.tar.gz"
        sha256 "0b46d28c88668d822984408ce291fef24ab988646774d37065aa5cba8a7fd071"
    
        def install
          bin.install "codesnap"
        end
      end

    end

  end
