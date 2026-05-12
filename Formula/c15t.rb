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
    assert_predicate bin/"c15t", :executable?
    output = shell_output("#{bin}/c15t --version 2>&1")
    assert_match(/\d+\.\d+\.\d+/, output)
  end
end
