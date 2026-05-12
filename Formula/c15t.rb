class C15t < Formula
  desc "CLI to scaffold cookie banners, preference center, types and migrations"
  homepage "https://c15t.com/docs/cli/overview"
  url "https://registry.npmjs.org/@c15t/cli/-/cli-2.0.4.tgz"
  sha256 "db48dea185fec93ee873796d57ff1a83e57b22539a604ad1264072878d964d08"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    # The npm package ships its bin as `cli`; expose it as `c15t` on $PATH
    # so the brew formula name and command name match.
    bin.install_symlink libexec/"bin/cli" => "c15t"
  end

  test do
    # The c15t CLI is interactive and assumes it's running inside a c15t
    # project (it errors with "Could not find project root" otherwise),
    # so there is no clean non-interactive invocation to assert against.
    # Verifying the binary is on $PATH and executable confirms the npm
    # install + symlink rename succeeded, which is what this formula owns.
    assert_predicate bin/"c15t", :executable?
  end
end
