require "language/node"

class Caplia < Formula
  desc "Caplia on the command line, built for AI agents and humans alike"
  homepage "https://docs.venture.caplia.ai"
  url "https://registry.npmjs.org/caplia/-/caplia-0.1.0.tgz"
  sha256 "c766fbefa5ee6d1fa77ae6ae78c63c7421cc77721e3283ddffa3372f7c36c7b3"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "caplia/#{version}", shell_output("#{bin}/caplia version")
  end
end
