class VsQa < Formula
  desc "VS QA tool"
  homepage "https://github.com/VladislavSumin/vs-qa"
  url "https://github.com/VladislavSumin/vs-qa/releases/download/v0.48.0/vs-qa-min.jar"
  sha256 "930e7af3b3cc0f03be1ca1c6426f079b23a31d3f1c421e0159b4cc18f9543486"
  version "0.48.0"

  depends_on "openjdk@21"

  def install
    libexec.install "vs-qa-min.jar" => "vs-qa.jar"
    (bin/"vs-qa").write <<~EOS
      #!/bin/bash
      export JAVA_HOME="#{Formula["openjdk@21"].opt_prefix}"
      exec "#{Formula["openjdk@21"].opt_bin}/java" -jar "#{libexec}/vs-qa.jar" "$@"
    EOS
  end
end
