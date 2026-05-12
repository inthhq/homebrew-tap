class Inrepo < Formula
  desc "Vendor upstream git repositories into inrepo_modules from declarative config"
  homepage "https://github.com/inthhq/inrepo"
  url "https://registry.npmjs.org/inrepo/-/inrepo-0.0.8.tgz"
  sha256 "949874c2c760ece5a2fd5234ff0e11b715d82fb3ffc585dd1db9afec06a4ed18"
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
