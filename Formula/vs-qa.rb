class VsQa < Formula
  desc "VS QA tool"
  homepage "https://github.com/VladislavSumin/vs-qa"
  url "https://github.com/VladislavSumin/vs-qa/releases/download/v0.23.0/vs-qa-min.jar"
  sha256 "3d0f366498830b442db12449140722433ad54d88d36f8f00c78982a0ef62d362"
  version "0.23.0"

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
