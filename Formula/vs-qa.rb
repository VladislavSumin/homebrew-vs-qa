class VsQa < Formula
  desc "VS QA tool"
  homepage "https://github.com/VladislavSumin/vs-qa"
  url "https://github.com/VladislavSumin/vs-qa/releases/download/v0.21.0/vs-qa-min.jar"
  sha256 "baff164a0b90cfd6459d1d388bec65f90a7ff84e60b2ac1fa57b6a447bf717ac"
  version "0.21.0"

  depends_on "openjdk@21"

  def install
    libexec.install "vs-qa-min.jar" => "vs-qa.jar"
    bin.write_jar_script libexec/"vs-qa.jar", "vs-qa"
  end
end
