class Ec2pf < Formula
  desc "CLI tool for managing AWS SSM port-forwarding sessions to EC2 instances"
  homepage "https://github.com/KemalAbdic/ec2pf"
  version "1.1.2"
  license "GPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/KemalAbdic/ec2pf/releases/download/v1.1.2/ec2pf-1.1.2-darwin-arm64"
      sha256 "959110ee3d0af8abed22995b8010a571bb76943544e91517113f7e356b634107"
    end
    on_intel do
      url "https://github.com/KemalAbdic/ec2pf/releases/download/v1.1.2/ec2pf-1.1.2-darwin-amd64"
      sha256 "403bb389dfb0c1e352d2d54fa7c5794dbb02cc56b99ed8e6adcfd8290a039159"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/KemalAbdic/ec2pf/releases/download/v1.1.2/ec2pf-1.1.2-linux-arm64"
      sha256 "6f938b5373c9ba526c4f5b370daee6056e1e9cd5499f02eb75ace0beb838c89a"
    end
    on_intel do
      url "https://github.com/KemalAbdic/ec2pf/releases/download/v1.1.2/ec2pf-1.1.2-linux-amd64"
      sha256 "d04dc65e3ad5949ff3bb0443c66ced61d50349f98b6cf58d12c6079a69f10e55"
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
