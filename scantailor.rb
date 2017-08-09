# This is a quick and dirty HEAD only formula for installing the "experimental"
# branch of scantailor from https://github.com/Tulon/scantailor.git, as recommended
# by louiscan here:
#
# https://forum.diybookscanner.org/viewtopic.php?f=21&t=3407#p20608
#
# To use:
# 
#    brew tap dsanson/homebrew-tap
#    brew install dsanson/homebrew-tap/scantailor --HEAD
#
# The formula probably doesn't catch all the dependencies, because
# I used it to reinstall scantailor on a system that had a previous
# broken version of scantailor, and its dependencies, already installed.

class Scantailor < Formula
  desc ""
  version "0.9.12.2"
  homepage "http://scantailor.org/"
  head "https://github.com/Tulon/scantailor.git", :branch => "experimental"

  depends_on "cmake" => :build
  depends_on "eigen"
  depends_on "qt5"
  depends_on "jpeg"
  depends_on "libtiff"
  depends_on "boost"

  def install
    system "cmake", ".", *std_cmake_args
    system "make", "install" # if this fails, try separate make/make install steps
  end

end

