class Sub < Formula
  desc ""
  homepage ""
  url "https://github.com/GreenGremlin/sub/archive/v0.1.11.tar.gz"
  head "https://github.com/GreenGremlin/sub.git"
  sha256 "da8e4d4838bcb3c19b5362f1b81749c2f921ce1d9aad71fd8786a48c41b37e6b"

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
