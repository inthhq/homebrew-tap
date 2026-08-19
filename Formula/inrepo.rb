class Inrepo < Formula
  desc "Vendor upstream git repositories into inrepo_modules from declarative config"
  homepage "https://github.com/inthhq/inrepo"
  url "https://registry.npmjs.org/inrepo/-/inrepo-0.0.9.tgz"
  sha256 "38daec45bb91b31d473095da9018501329bbff6d4138d3c43cfd04f9756b2822"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/inrepo --help")
  end
end
