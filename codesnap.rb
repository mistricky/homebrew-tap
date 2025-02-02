class Codesnap < Formula
  desc "Pure Rust tool to generate beautiful code snapshots"
  homepage "https://github.com/mistricky/codesnap"
  version "0.10.1"
    
    on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/mistricky/codesnap/releases/download/v0.10.1/codesnap-aarch64-apple-darwin.tar.gz"
        sha256 "cb1fd68b2489a3db96bd415a1e10dfab0953aa20b97535bd88e0fe6454fbd717"
    
        def install
          bin.install "codesnap"
        end
      end
      if Hardware::CPU.intel?
        url "https://github.com/mistricky/codesnap/releases/download/v0.10.1/codesnap-x86_64-apple-darwin.tar.gz"
        sha256 "da5cadc8ba9be06ac33726571d309d9cc329ef715413399b94838c0096f4bd31"
    
        def install
          bin.install "codesnap"
        end
      end

    end


    on_linux do
      if Hardware::CPU.arm?
        url "https://github.com/mistricky/codesnap/releases/download/v0.10.1/codesnap-aarch64-unknown-linux-gnu.tar.gz"
        sha256 "b370dae6f4c26a946e689f9a08ff043d1096de7b0f9a2cdb24246c5ce767f250"
    
        def install
          bin.install "codesnap"
        end
      end
      if Hardware::CPU.intel?
        url "https://github.com/mistricky/codesnap/releases/download/v0.10.1/codesnap-x86_64-unknown-linux-gnu.tar.gz"
        sha256 "17694d300a4d8a3122ba104f92881450c8aafc62599a22a3bbedd09cd4322973"
    
        def install
          bin.install "codesnap"
        end
      end

    end

  end
