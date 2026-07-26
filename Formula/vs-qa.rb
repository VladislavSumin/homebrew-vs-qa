class VsQa < Formula
  desc "VS QA tool"
  homepage "https://github.com/VladislavSumin/vs-qa"
  url "https://github.com/VladislavSumin/vs-qa/releases/download/v0.46.0/vs-qa-min.jar"
  sha256 "f9ab2af946f20a896890c0d0d63c092e83e198fa134e74290765cc599508af2e"
  version "0.46.0"

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
