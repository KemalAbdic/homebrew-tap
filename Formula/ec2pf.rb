class Ec2pf < Formula
  desc "CLI tool for managing AWS SSM port-forwarding sessions to EC2 instances"
  homepage "https://github.com/KemalAbdic/ec2pf"
  version "1.1.2"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/KemalAbdic/ec2pf/releases/download/v1.1.2/ec2pf-1.1.2-darwin-arm64"
      sha256 "5c48e9d5fbe9a93baeca35b6d86867249f48249f6721c20598a2355c87646908"
    end
    on_intel do
      url "https://github.com/KemalAbdic/ec2pf/releases/download/v1.1.2/ec2pf-1.1.2-darwin-amd64"
      sha256 "c8878cb59a9f6ac5180689d23340e156a42937e959f314b529a90989109d2f50"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/KemalAbdic/ec2pf/releases/download/v1.1.2/ec2pf-1.1.2-linux-arm64"
      sha256 "3b289e2d381b55a36534d92e14e29eafccb2b2194f4e64280135eb5135d0c12a"
    end
    on_intel do
      url "https://github.com/KemalAbdic/ec2pf/releases/download/v1.1.2/ec2pf-1.1.2-linux-amd64"
      sha256 "ea326695f8f9a2beea2e475f3029f755e9bf14c8db75c8a95f2881e43d26f4e1"
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
