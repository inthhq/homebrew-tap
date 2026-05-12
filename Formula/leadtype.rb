class Leadtype < Formula
  desc "Framework-neutral docs pipeline tooling for MDX, LLM bundles, and search"
  homepage "https://leadtype.dev"
  url "https://registry.npmjs.org/leadtype/-/leadtype-0.1.0.tgz"
  sha256 "fd50e824746d39529e07292fd98a79159bbb59661d59ae27f58159afc315e843"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    # `leadtype --help` exits 0 but writes nothing to stdout/stderr, so
    # there's no stable text to assert against. Verifying the binary is
    # on $PATH and executable confirms the npm install succeeded, which
    # is what this formula owns.
    assert_predicate bin/"leadtype", :executable?
  end
end
