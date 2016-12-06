class SubEs < Formula
  desc ""
  homepage ""
  url "https://github.com/GreenGremlin/es/archive/v0.1.1.tar.gz"
  head "https://github.com/GreenGremlin/es.git"
  sha256 "9f94c9a851ce88932aa9b51f3f58a204b28ae3e3df34fbe701108ddd44c103a0"
  depends_on "greengremlin/cask/sub"

  def install
    libexec.install Dir["*"]
    `sub-mksub es #{libexec} > #{buildpath}/es`
    `sub-mkcompletions es #{libexec} bash > #{buildpath}/es-completions-bash`
    bin.install "#{buildpath}/es"
    bash_completion.install "#{buildpath}/es-completions-bash" => "sub-es-completions"
  end
end
