class SubEs < Formula
  desc ""
  homepage ""
  url "https://github.com/GreenGremlin/es/archive/v0.1.1.tar.gz"
  head "https://github.com/GreenGremlin/es.git"
  sha256 "da8e4d4838bcb3c19b5362f1b81749c2f921ce1d9aad71fd8786a48c41b37e6b"
  depends_on "greengremlin/cask/sub"

  def install
    libexec.install Dir["*"]
    `sub-mksub es #{libexec} > #{buildpath}/es`
    `sub-mkcompletions es #{libexec} bash > #{buildpath}/es-completions-bash`
    bin.install "#{buildpath}/es"
    bash_completion.install "#{buildpath}/es-completions-bash" => "sub-es-completions"
  end
end
