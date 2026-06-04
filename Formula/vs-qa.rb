class VsQa < Formula
  desc "VS QA tool"
  homepage "https://github.com/VladislavSumin/vs-qa"
  url "https://github.com/VladislavSumin/vs-qa/releases/download/v0.18.2/vs-qa-min.jar"
  sha256 "4d826ea1aeeff66a420e084d754e1cfed00470be68d6bb08bff05bf903a412bc"
  version "0.18.2"

  depends_on "openjdk@21"

  def install
    libexec.install "vs-qa-min.jar" => "vs-qa.jar"
    bin.write_jar_script libexec/"vs-qa.jar", "vs-qa"
  end
end
