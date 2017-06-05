# Documentation: http://docs.brew.sh/Formula-Cookbook.html
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Dobi < Formula
  desc "A build automation tool for Docker applications"
  homepage "https://dnephin.github.io/dobi/"
  url "https://github.com/dnephin/dobi/releases/download/v0.9/dobi-darwin"
  sha256 "6ee6f4c3cede36b955fc7bb1de02b35e19d221271f34fdcfd8d9d47507e5126f"

  def install
    mv 'dobi-darwin', 'dobi'
    bin.install 'dobi'
  end

  test do
    system "dobi", "--version"
  end
end
