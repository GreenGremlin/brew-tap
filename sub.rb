class Sub < Formula
  desc ""
  homepage ""
  url "https://github.com/GreenGremlin/sub/archive/v0.1.10.tar.gz"
  head "https://github.com/GreenGremlin/sub.git"
  sha256 "bc9222bea53e777651b486a7131b4a81d0a70dff8a4cc7b5c6185f055a75d595"

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
