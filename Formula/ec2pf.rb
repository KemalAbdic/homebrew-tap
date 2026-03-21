class Ec2pf < Formula
  desc "CLI tool for managing AWS SSM port-forwarding sessions to EC2 instances"
  homepage "https://github.com/KemalAbdic/ec2pf"
  version "1.1.3"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/KemalAbdic/ec2pf/releases/download/v1.1.3/ec2pf-1.1.3-darwin-arm64"
      sha256 "c522a3e08e221e8b90871e41e1b9d2539889658307e7b0de210cc868b0006e48"
    end
    on_intel do
      url "https://github.com/KemalAbdic/ec2pf/releases/download/v1.1.3/ec2pf-1.1.3-darwin-amd64"
      sha256 "547336602b9fc311e15c5d26c4a4215f9ce7fd73c9b577a66b09826ce39014ec"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/KemalAbdic/ec2pf/releases/download/v1.1.3/ec2pf-1.1.3-linux-arm64"
      sha256 "8896faee8097d301c6fe47107cd61e638d377bff3e9785e7467e8dd7450039fc"
    end
    on_intel do
      url "https://github.com/KemalAbdic/ec2pf/releases/download/v1.1.3/ec2pf-1.1.3-linux-amd64"
      sha256 "3e4a1ec0a4334c1badca40236372451ad4956c99dac6f2ff6ea52543fb98e87f"
    end
  end

  def install
    binary = Dir.glob("ec2pf-*").first
    odie "ec2pf binary not found in download" if binary.nil?
    chmod 0755, binary
    bin.install binary => "ec2pf"
  end

  test do
    assert_match "ec2pf", shell_output("#{bin}/ec2pf --version")
  end
end
