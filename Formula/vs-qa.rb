class VsQa < Formula
  desc "VS QA tool"
  homepage "https://github.com/VladislavSumin/vs-qa"
  url "https://github.com/VladislavSumin/vs-qa/releases/download/v0.47.0/vs-qa-min.jar"
  sha256 "f062793346391a854f8178be054f4650ad4c7b7f43c9825cb6a1c01493796e4a"
  version "0.47.0"

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
