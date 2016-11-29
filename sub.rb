class Sub < Formula
  desc ""
  homepage ""
  url "https://github.com/GreenGremlin/sub/archive/v0.1.9.tar.gz"
  head "https://github.com/GreenGremlin/sub.git"
  sha256 "f2dc06ec57a5d7f0d9fee20f67eba781fd48d43d80a248c6f7668c4734095745"

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
