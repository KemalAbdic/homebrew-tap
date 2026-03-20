# Placeholder — this file is overwritten by CI on each release.
# See https://github.com/KemalAbdic/ec2pf for the source template.
class Ec2pf < Formula
  desc "CLI tool for managing AWS SSM port-forwarding sessions to EC2 instances"
  homepage "https://github.com/KemalAbdic/ec2pf"
  version "0.0.0"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/KemalAbdic/ec2pf/releases/latest"
      sha256 ""
    end
    on_intel do
      url "https://github.com/KemalAbdic/ec2pf/releases/latest"
      sha256 ""
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/KemalAbdic/ec2pf/releases/latest"
      sha256 ""
    end
    on_intel do
      url "https://github.com/KemalAbdic/ec2pf/releases/latest"
      sha256 ""
    end
  end

  def install
    binary = Dir.glob("ec2pf-*").first
    chmod 0755, binary
    bin.install binary => "ec2pf"
  end

  test do
    assert_match "ec2pf", shell_output("#{bin}/ec2pf --version")
  end
end
