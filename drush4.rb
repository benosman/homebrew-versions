class Drush4 < Formula
  homepage "https://github.com/drush-ops/drush"
  url "http://ftp.drupal.org/files/projects/drush-7.x-4.6.tar.gz"
  sha256 "c8f5a165c1624b023aaa74b4fd852da1dc426bd08f7cf1af328fe16e7de27d8d"

  bottle :unneeded

  keg_only "Conflicts with drush in main repository."

  resource "Console_Table" do
    url "http://download.pear.php.net/package/Console_Table-1.1.3.tgz"
    sha256 "2c9ad601b2ee777c20ffe5b0c76a0ee66ad069e8753973208a42cebb9c1be8b1"
  end

  def install
    libexec.install Dir["*"]
    (libexec/"lib").install resource("Console_Table")
    bin.install_symlink libexec+"drush"
  end
end
