class Inrepo < Formula
  desc "Vendor upstream git repositories into inrepo_modules from declarative config"
  homepage "https://github.com/inthhq/inrepo"
  url "https://registry.npmjs.org/inrepo/-/inrepo-0.0.7.tgz"
  sha256 "6e7cff8d822b083c68b2d2d376dad57a8c92725c4ad9718243704acbb7c7641c"
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
