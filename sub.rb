class Sub < Formula
  desc ""
  homepage ""
  url "https://github.com/GreenGremlin/sub/archive/v0.1.6.tar.gz"
  head "https://github.com/GreenGremlin/sub.git"
  # sha256 "ac387e05074e93095bb61ada9adf0f3d05d748e5893c93e4d88e2766a8f262dc"

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
