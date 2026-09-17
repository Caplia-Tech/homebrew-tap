require "language/node"

class Phronel < Formula
  desc "Phronel on the command line: run a company, get the decision back"
  homepage "https://github.com/Caplia-Tech/phronel-cli"
  url "https://registry.npmjs.org/phronel/-/phronel-0.1.0.tgz"
  sha256 "a2a30fa31a28a61850f7f47d48bfd5aed75fabf47ed0700d3b2d039e14350d07"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/phronel --version")
  end
end
