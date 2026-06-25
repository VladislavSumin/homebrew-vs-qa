class VsQa < Formula
  desc "VS QA tool"
  homepage "https://github.com/VladislavSumin/vs-qa"
  url "https://github.com/VladislavSumin/vs-qa/releases/download/v0.19.1/vs-qa-min.jar"
  sha256 "6869c872cbc92d59c098f71fbe1db7c43840e72b5cd100050420f7d0e3830880"
  version "0.19.1"

  depends_on "openjdk@21"

  def install
    libexec.install "vs-qa-min.jar" => "vs-qa.jar"
    bin.write_jar_script libexec/"vs-qa.jar", "vs-qa"
  end
end
