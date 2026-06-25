class VsQa < Formula
  desc "VS QA tool"
  homepage "https://github.com/VladislavSumin/vs-qa"
  url "https://github.com/VladislavSumin/vs-qa/releases/download/v0.19.0/vs-qa-min.jar"
  sha256 "d9a38d3def3864325cc7fffdbfce6378a8368db2da384ef9d85ab2fc8a268c56"
  version "0.19.0"

  depends_on "openjdk@21"

  def install
    libexec.install "vs-qa-min.jar" => "vs-qa.jar"
    bin.write_jar_script libexec/"vs-qa.jar", "vs-qa"
  end
end
