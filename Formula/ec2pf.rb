# Placeholder — this file is overwritten by CI on each release.
# See https://github.com/KemalAbdic/ec2pf for the source template.
class Ec2pf < Formula
  desc "CLI tool for managing AWS SSM port-forwarding sessions to EC2 instances"
  homepage "https://github.com/KemalAbdic/ec2pf"
  version "0.0.0"
  license "GPL-3.0-only"

  depends_on :arch => :x86_64

  url "https://github.com/KemalAbdic/ec2pf/releases/latest"
  sha256 ""

  def install
    odie "Install ec2pf from a release: brew update && brew install ec2pf"
  end
end
