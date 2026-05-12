class Readie < Formula
  desc "Generate high-quality README files from a validated JSON config"
  homepage "https://github.com/consentdotio/readie"
  url "https://registry.npmjs.org/readie/-/readie-1.0.0.tgz"
  sha256 "884f8a84fa985a1220ed557017a6c40bbfbb9552d6f1416afa80637d245e3415"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    assert_predicate bin/"readie", :executable?
    output = shell_output("#{bin}/readie --help 2>&1")
    assert_match(/readie/i, output)
  end
end
