class VsQa < Formula
  desc "VS QA tool"
  homepage "https://github.com/VladislavSumin/vs-qa"
  url "https://github.com/VladislavSumin/vs-qa/releases/download/v0.42.0/vs-qa-min.jar"
  sha256 "420edaea381b2ce157b874e0b2fbf122719109bfce69022f0a2f262573b7bebf"
  version "0.42.0"

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
