class Ec2pf < Formula
  desc "CLI tool for managing AWS SSM port-forwarding sessions to EC2 instances"
  homepage "https://github.com/KemalAbdic/ec2pf"
  version "1.1.4"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/KemalAbdic/ec2pf/releases/download/v1.1.4/ec2pf-1.1.4-darwin-arm64"
      sha256 "730bb049d5d2d3e5a8eabd9dd28580fa7afee3b281b03c99b0db26c9af21694e"
    end
    on_intel do
      url "https://github.com/KemalAbdic/ec2pf/releases/download/v1.1.4/ec2pf-1.1.4-darwin-amd64"
      sha256 "719c5a0084f24c2eb682f1827a2ef230912b810d3242f3eac4a298ac049d67d0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/KemalAbdic/ec2pf/releases/download/v1.1.4/ec2pf-1.1.4-linux-arm64"
      sha256 "20f30c1e2ab0dd446fb36e558e2a63df784812a0a0ea57d5ce0be7d789c7b2b8"
    end
    on_intel do
      url "https://github.com/KemalAbdic/ec2pf/releases/download/v1.1.4/ec2pf-1.1.4-linux-amd64"
      sha256 "1ea452f68a19f0544e03c3de8d03996fda370049a538aada4d8adc4f41fbd7f9"
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
