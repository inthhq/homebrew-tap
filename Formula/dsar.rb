class Dsar < Formula
  desc "Data Subject Access Request framework with subpath exports"
  homepage "https://github.com/inthhq/dsar"
  url "https://registry.npmjs.org/dsar/-/dsar-0.0.5.tgz"
  sha256 "2c39e3726aaca5c55f4448993055e8aee795c445abc81f31236aa267befafe49"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    assert_predicate bin/"dsar", :executable?
    output = shell_output("#{bin}/dsar --help 2>&1")
    assert_match(/dsar/i, output)
  end
end
