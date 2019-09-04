require "FileUtils"

$v = "0.0.1"
$p = "helm-hacker"

class HelmHacker < Formula
  homepage "https://github.com/calm/#{$p}"

  url "https://github.com/calm/#{$p}/releases/download/#{$v}/#{$p}-#{$v}"
  version $v
  # shasum -a 256 < "helm-hacker-0.0.1" | cut -d' ' -f1
  sha256 "0db0c9d249c95af557133dd60a7c02ac250ddab2c812d13336a98d26efe332a2"

  def install
    FileUtils.mv("#{$p}-#{$v}", "#{$p}")
    bin.install "#{$p}"
  end
end