class VsQa < Formula
  desc "VS QA tool"
  homepage "https://github.com/VladislavSumin/vs-qa"
  url "https://github.com/VladislavSumin/vs-qa/releases/download/v0.18.1/vs-qa-min.jar"
  sha256 "cbc754cedaa00561a9eec257268731888b59309ab2c6c9a4f2d1527071c0e671"
  version "0.18.1"

  depends_on "openjdk@21"

  def install
    libexec.install "vs-qa-min.jar" => "vs-qa.jar"
    bin.write_jar_script libexec/"vs-qa.jar", "vs-qa"
  end
end
