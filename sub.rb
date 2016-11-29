class Sub < Formula
  desc ""
  homepage ""
  url "https://github.com/GreenGremlin/sub/archive/v0.1.10.tar.gz"
  head "https://github.com/GreenGremlin/sub.git"
  sha256 "1d1acb1c2ac34370292cd2e682b035271744f0bed83fcc5a7b142bb116bdd8ad"

  def install
    bin.install "bin/sub" => "sub"
    bin.install "bin/sub-mksub" => "sub-mksub"
    bin.install "bin/sub-mkcompletions" => "sub-mkcompletions"
    libexec.install Dir["libexec/*"]
    lib.install Dir["lib/*"]
    share.install "share/colors.bash"
    `mkdir #{prefix}/completions`
    prefix.install "completions/sub.bash" => "completions/sub.bash"
    # bash_completion.install "completions/sub.bash" => "sub-completions"
    # fish_completion.install "completions/sub.fish"
  end
end
