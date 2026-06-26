class VsQa < Formula
  desc "VS QA tool"
  homepage "https://github.com/VladislavSumin/vs-qa"
  url "https://github.com/VladislavSumin/vs-qa/releases/download/v0.20.0/vs-qa-min.jar"
  sha256 "ab8b4a4d422efe4c1cede4160dc3e10e50b93b0fafbe54f64c7b608c20266d54"
  version "0.20.0"

  depends_on "openjdk@21"

  def install
    libexec.install "vs-qa-min.jar" => "vs-qa.jar"
    bin.write_jar_script libexec/"vs-qa.jar", "vs-qa"
  end
end
